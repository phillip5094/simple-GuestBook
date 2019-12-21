# simple-GuestBook

[![Build Status](https://travis-ci.com/phillip5094/simple-GuestBook.svg?branch=master)](https://travis-ci.com/phillip5094/simple-GuestBook)

### 0.개발환경
- 자바 8+
- SpringMVC
- Tomcat8.5
- JSP
- Mybatis
- MySQL

### 1. 구현스펙
- 이메일, 비밀번호 본문을 입력받아 디비에 추가 (2019.12.18)
- 글 등록 시 현재 시각도 기록 (2019.12.18)
- DB에 있는 내용을 최신 글이 맨 위에 오도록 페이징 없이 출력
- 비밀번호를 입력 받아 방명록 글 수정 가능
- 수정 시 별도 데이블 컬럼에 수정 시각 기록
- 이메일이 올바른지 서버 쪽, 클라이언트 쪽 모두에서 체크
- Travis CI와 연동