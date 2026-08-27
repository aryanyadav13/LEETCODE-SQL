import pandas as pd

# def replace_employee_id(employees: pd.DataFrame, employee_uni: pd.DataFrame) -> pd.DataFrame:
#     df1 = employees
#     df2 = employee_uni 
#    df = pd.merge(df1, df2, on='id', how='left')
#     return df

def replace_employee_id(employees: pd.DataFrame, employee_uni: pd.DataFrame) -> pd.DataFrame:
    df1 = employees
    df2 = employee_uni

    df = pd.merge(df1, df2, on='id', how='left')

    return df[['unique_id','name']]