import pandas as pd

def find_products(products: pd.DataFrame) -> pd.DataFrame:
    df = products
    fc = (df['low_fats'] == 'Y') & (df['recyclable'] =='Y')
    df[fc]
    return df[fc][['product_id']]