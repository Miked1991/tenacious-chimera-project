import pytest
from src.skills.trend_fetcher import fetch_trends # This import will fail initially

def test_trend_fetcher_schema():
    """
    Asserts that the trend data structure matches the API contract 
    defined in specs/technical.md.
    """
    sample_input = {
        "platform": "twitter",
        "category": "AI_Tech",
        "timeframe_hours": 24
    }
    
    response = fetch_trends(sample_input)
    
    # Assert top-level structure
    assert "timestamp" in response
    assert isinstance(response["trends"], list)
    
    # Assert item-level structure [cite: 74]
    for trend in response["trends"]:
        assert "topic" in trend
        assert "velocity_score" in trend
        assert isinstance(trend["velocity_score"], float)
        assert "source_url" in trend