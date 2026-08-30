def find_managers(employee: pd.DataFrame) -> pd.DataFrame:

    df = (
        employee.groupby('managerId')
        .agg(count=('id', 'count'))
        .query('count >= 5')
        .reset_index()
    )

    return employee[employee['id'].isin(df['managerId'])][['name']]