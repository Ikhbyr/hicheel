MERGE INTO ADM_PRIVILEGE a using dual on (a.priv_code='99990040') when matched then
 update set a.name='????????? ???????? ??????' when not matched then
 insert(priv_code, name, name2, sys_no) values('99990040', '????????? ???????? ??????', '????????? ???????? ??????', 9999);
MERGE INTO ADM_PRIVILEGE a using dual on (a.priv_code='99990041') when matched then
 update set a.name='????????? ???????? ???????' when not matched then
 insert(priv_code, name, name2, sys_no) values('99990041', '????????? ???????? ???????', '????????? ???????? ???????', 9999);