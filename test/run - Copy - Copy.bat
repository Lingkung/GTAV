@Echo off
FOR /L %%A IN (1,1,200) DO (
  ECHO %%A
  timeout 2
)