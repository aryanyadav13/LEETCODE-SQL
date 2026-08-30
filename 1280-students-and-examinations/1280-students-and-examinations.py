import pandas as pd

def students_and_examinations(students: pd.DataFrame, subjects: pd.DataFrame, examinations: pd.DataFrame) -> pd.DataFrame:
    df1 = students
    df2 = subjects
    df = pd.merge(df1, df2, how = 'cross')
    df3 = examinations
    examinations['attended_exams'] = 1
    df4 = pd.merge(df, df3, how='left', on=('student_id','subject_name'))
    return df4.groupby(['student_id','student_name','subject_name'], dropna = False).agg({'attended_exams' : 'count'}).reset_index()