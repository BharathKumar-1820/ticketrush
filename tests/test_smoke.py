import pytest

from ticketrush import main


def test_main_prints_hello(capsys: pytest.CaptureFixture[str]) -> None:
    main()
    assert "Hello" in capsys.readouterr().out
