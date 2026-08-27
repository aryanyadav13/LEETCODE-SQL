import pandas as pd

def sales_analysis(sales: pd.DataFrame, product: pd.DataFrame) -> pd.DataFrame:
    df1 = sales
    df2 = product

    df = pd.merge(df1, df2, on='product_id', how='inner')

    return df[['product_name','year','price']]