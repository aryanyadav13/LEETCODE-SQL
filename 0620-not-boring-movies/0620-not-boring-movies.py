import pandas as pd

def not_boring_movies(cinema: pd.DataFrame) -> pd.DataFrame:
    df = cinema
    fc = (df['id']%2 == 1) & (df['description'] != 'boring')
    return df[fc][['id','movie','description','rating']].sort_values(by = 'rating',ascending = False)