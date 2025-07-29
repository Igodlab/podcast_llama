from manim import *
from subprocess import run, CalledProcessError
from pathlib import Path
import json

__all__ = [
    "create_manim_subs",
    "get_audio_sample_rate"
]

def parse_json_chunks():
    pass

def create_manim_subs(
    file: Path | str,
    background: str = "transparent", 
    quality: str = "l",
    width: int = 1080,
    height: int = 1920,
):
    """Run manim animation for subtitles"""
    cmd = [
        "uv run",
        "manim",
        "--"+background,
        "-pq"+quality,
        "-r", f"{width},{height}",
        str(file),
        "ManimSub"
    ]

    # try:
    # result = run(cmd, capture_output=True, check=True, text=True)
    print(cmd)
        
    # except (CalledProcessError, json.JSONDecodeError, KeyError) as e:
    #     raise RuntimeError(f"Failed to probe audio file: {e}") from e


class ManimSub(Scene):
    def construct(self):
        sentence = "This app is gonna be freaking awesome!!!"
        words = sentence.split()
        # Create a VGroup containing a Text mobject for each word
        _word_objs = VGroup(*[Text(word, font="Whispering Signature-Personal use", color=RED, font_size=34) for word in words]).arrange(RIGHT, buff=0.5)
        word_objs = VGroup(*[AnimatedBoundary(txt, colors=[WHITE]) for txt in _word_objs])

        self.add(word_objs, _word_objs)
        self.wait()

        for i in range(len(word_objs)):
            self.play(
                word_objs[i].animate.scale(2),
                _word_objs[i].animate.scale(2),
                run_time=0.5,
            )
            self.wait(0.2)
            self.play(
                word_objs[i].animate.scale(1/2),
                _word_objs[i].animate.scale(1/2),
                run_time=0.5
            )
            self.wait(0.2)


def get_audio_sample_rate(file: Path | str) -> int:
    """Get the original sample rate of an audio file using ffprobe"""
    SAMPLE_RATE = 16000
    cmd = [
        "ffprobe",
        "-v", "quiet",
        "-print_format", "json",
        "-show_streams",
        file
    ]
    
    try:
        result = run(cmd, capture_output=True, check=True, text=True)
        data = json.loads(result.stdout)
        
        # Find the first audio stream
        for stream in data.get('streams', []):
            if stream.get('codec_type') == 'audio':
                return int(stream.get('sample_rate', SAMPLE_RATE))
                
        raise RuntimeError("No audio stream found in file")
        
    except (CalledProcessError, json.JSONDecodeError, KeyError) as e:
        raise RuntimeError(f"Failed to probe audio file: {e}") from e


