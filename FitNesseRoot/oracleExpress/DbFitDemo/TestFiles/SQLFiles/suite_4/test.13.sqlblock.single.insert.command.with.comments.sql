-- yet another insert, this time with comment
insert into test_emp (id, description) 
SELECT nvl( (SELECT MAX(id) FROM test_emp),0)+1, 
    'single with comments' || sysdate FROM DUAL