#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Fri Jun  2 13:37:55 2023

@author: avantika
"""

import pandas as pd
import glob, os
from sqlalchemy import create_engine

for file in glob.glob("*.csv"):
    df = pd.read_csv(file)
    
    # Create SQLAlchemy engine to connect to MySQL Database
    engine = create_engine("mysql+pymysql://root:anothaone@localhost:3306/airbnb")
    
    # Convert dataframe to SQL table                                   
    df.to_sql(file[:-4], engine, index=False)
    
    print('done')

