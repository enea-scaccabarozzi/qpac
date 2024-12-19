from pac.ingestion.generator import generate_poem


def test_dummy() -> None:
    assert True


def test_poem() -> None:
    title = "Poem"
    poem = generate_poem(title)
    assert title in poem
