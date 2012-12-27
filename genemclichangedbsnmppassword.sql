#run this in the em repository this will 
set pages 0
set lines 100
spool gendbsnmppasschangeem11.txt
SELECT 
distinct 'update_db_password -target_name='||TARGET_NAME||' -user_name=dbsnmp -old_password=<password> -new_password=<newpassword> -retype_new_password=<newpassword> -change_at_target=yes '  
FROM SYSMAN.MGMT$TARGET
where lower(TARGET_NAME) like '%gc%'
and target_type like '%database%'
spool off
