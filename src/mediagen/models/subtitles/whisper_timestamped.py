import torch
import manim
import asyncio
from subprocess import run, CalledProcessError
from pathlib import Path

from .subtitles_utils import get_audio_sample_rate, create_manim_subs
from ..model_manager import Subs
from mediagen.tts.tts_utils import Audio
from mediagen.utils import get_device

from typing import override, Any, TypeVar
from numpy import floating
from numpy.typing import NDArray

__all__ = [
    "WhisperTimestamped",
]

class WhisperTimestamped(Subs):
    def __init__(self, model_name: str = "NbAiLab/whisper-large-v2-nob"):
        self.model_name: str = model_name
        self.device: torch.device = get_device()
        self._whisper_timestamped_model: Any = None
        self._loading_lock = asyncio.Lock()

    @override
    async def load(self) -> None:
        async with self._loading_lock:
            if self._whisper_timestamped_model is None:
                # Import whisperer only when needed
                import whisper_timestamped as wt

                self.import_whisper = wt

                # HACK: convert device to str to pass it to async thread
                device_str: str = str(self.device)

                # run in thread pool
                self._whisper_timestamped_model = await asyncio.to_thread(
                    wt.load_model,
                    self.model_name,
                    device=device_str
                )

    @override
    def unload(self) -> None:
        if self._whisper_timestamped_model is not None:
            del self._whisper_timestamped_model
            self._whisper_timestamped_model = None
            torch.cuda.empty_cache()

    @property
    @override
    def is_loaded(self) -> bool:
        return self._whisper_timestamped_model is not None

    @property
    def whisper_timestamped_model(self):
        if not self.is_loaded:
            raise RuntimeError("Transcription & timestamp model not loaded. Call `await model.load()` first")
        return self._whisper_timestamped_model
    
    @override
    def prep_model(self, audio_path: Path | str) -> Audio:
        _audio_path: str = str(audio_path)
        sr: int = get_audio_sample_rate(audio_path)
        wavs: NDArray[floating[Any]] = self.import_whisper.load_audio(_audio_path, sr=sr)
        return Audio(wavs, sr)

    @override
    def run_model(self, audio: Audio, language: str = "en"):
        # json_dict = self.import_whisper.transcribe_timestamped(
        #     self.whisper_timestamped_model, 
        #     audio.wav, 
        #     language=language
        # )

        create_manim_subs(file="../src/mediagen/models/substitles/subtitles_utils.py")

        # return json_dict
