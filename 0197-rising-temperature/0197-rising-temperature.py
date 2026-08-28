import pandas as pd

def rising_temperature(weather: pd.DataFrame) -> pd.DataFrame:
    df = weather
    df.sort_values(by = 'recordDate', inplace = True)
    df['previous_day_temp'] = df['temperature'].shift(1)
    df['previous_date'] = df['recordDate'].shift(1)
    df['daysdiff']= (df['recordDate']-df['previous_date']).dt.days
    fc = (df['temperature']>df['previous_day_temp']) &(df['daysdiff'] ==1) 
    return df[fc][['id']]