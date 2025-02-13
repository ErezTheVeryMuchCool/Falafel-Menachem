CREATE TABLE [dbo].[Table] (
    [username]  NCHAR (30) NOT NULL,
    [password]  NCHAR (30) NOT NULL,
    [firstname] NCHAR (30) NULL,
    [surname]   NCHAR (30) NULL,
    [gender]    NCHAR (30) NULL,
    [age]       NCHAR (30) NULL,
    [learn]     NCHAR (30) NULL,
    [flavor]    NCHAR (30) NULL,
    [other]     NCHAR (30) NULL,
    PRIMARY KEY CLUSTERED ([username])
);

