import pandas as pd

def project_employees_i(project: pd.DataFrame, employee: pd.DataFrame) -> pd.DataFrame:
    df1 = project
    df2 = employee
    df = pd.merge(df1, df2, on='employee_id', how='inner')
    return df.groupby('project_id').agg({'experience_years': 'mean'}).round(2).reset_index().rename(columns = {'experience_years' : 'average_years'})