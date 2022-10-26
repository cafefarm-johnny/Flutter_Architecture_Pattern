# 소프트웨어 아키텍처 디자인 패턴

# 소프트웨어 아키텍처 디자인 패턴?

- 소프트웨어 아키텍처에서 반복적으로 일어나는 문제들을 재사용할 수 있기 좋은 형태로 가공하여 패턴화한 것
- 아키텍처 설계 시 프로젝트의 기본적인 윤곽을 잡고 시스템에 역할을 정리하여 관계, 규칙등을 지정하여 관리

## 장점

- 일관된 형태로 소프트웨어를 관리/유지 할 수 있음
- 기능을 구성하기 위한 코드들에 역할을 부여하여 코드 가독성을 향상시키고 복잡한 의존성을 다소 해결
- 협업자 간 원활한 커뮤니케이션 가능

## 단점

- 모든 상황에 대한 해법은 아님
- 업무 환경, 프로젝트 규모에 따라 득과 실이 존재

# MVC

- 애플리케이션을 Model, View, Controller 세 가지 구성으로 분리한 아키텍처 디자인 기법

## 구성 요소

![Untitled](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/f033af83-8d47-4888-9dc6-638ac08c02c1/Untitled.png)

### Model

- 비즈니스 로직 및 데이터를 포함
- MVC 패턴에서는 모델의 비중이 커질 수 밖에 없기 때문에 비즈니스 로직을 분리하여 서비스 레이어를 두어 MVC + S 형태로 구성하기도 함

### View

- UI를 표현하거나 유저와 상호작용하기 위한 화면

### Controller

- 모델과 뷰 구성요소 간 매개체 역할 수행

## 장점

- 역할 구분이 단순하고 직관적
- 이해하기 쉽고 구현 속도가 빠름

## 단점

- 모델과 뷰 사이에 의존도를 완전히 끊어낼 수 없음 (앱이 커질수록 복잡성 향상)

# MVP

# MVVM