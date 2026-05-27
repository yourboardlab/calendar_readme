# 요미 달력 · Yomi Calendar

> *A tiny calendar to capture your today — memos, money, todos, scores, and moods, all in one tap.*

매일의 작은 순간을 부담 없이 남기고, 한 달이 모이면 내 기분과 습관이 한눈에 보이는 캘린더 앱입니다.
기본은 **계정 없이** 쓰며, 모든 기록은 **내 휴대폰 안에만** 저장됩니다. 원하면 설정에서 **로그인(이메일·비밀번호)** 을 켜 앱 실행 시 잠금을 걸 수 있습니다.

**최신 버전:** **F.1.07** (2026-05-27) — 선택 로그인, ZIP 백업에 설정·로그인 포함, 월 기분 배지 동률 시 최근 기분 우선 등 ([변경 이력](#변경-이력-f107))

스토어·런처·위젯 목록에는 **요미 달력**, **Yomi Calendar**, 또는 빌드 설정에 따른 영문 표기가 함께 쓰일 수 있습니다. 이 문서에서는 제품을 **요미 달력**으로 통칭합니다.

<p align="center">
  <img src="assets/release_drawer_calendar.png" alt="메인 달력 화면" width="300" />
</p>

### 소개 영상

30초짜리 앱 소개 영상은 YouTube에서 볼 수 있습니다.

▶ **[요미 달력 소개 영상 보기](https://youtu.be/QZBNNUx_LD0)**

---

## 왜 만들었나요?

다이어리 앱들은 보통 둘 중 하나입니다.

- 너무 화려해서 매일 켜기 부담스럽거나,
- 너무 단순해서 한 달 뒤 돌아보면 아무 의미가 없거나.

**요미 달력** 은 그 중간을 노렸습니다.
한 번에 한 문장, 한 줄짜리 지출, 체크박스 하나, 점수 하나 — 그리고 가장 중요한 **오늘의 기분**.
이만큼만 매일 남기면, 한 달이 모일 즈음 달력 안에서 자기 자신이 보입니다.

---

## 핵심 기능

### 1. 오늘은 — 하루 한 줄 메모

항목당 **최대 10자**까지 짧게 끊어 오늘을 기록합니다. (처음에는 한글 기준 5자였으나 다국어를 위해 10자로 넓혔습니다.) "회의", "저녁 약속", "야근" 같은 식으로요.
긴 일기가 부담스러운 분에게 가장 잘 맞는 입력 방식입니다.

<p align="center">
  <img src="assets/release_hdr_memo.png" alt="오늘은(메모) 카드" width="300" />
</p>

### 2. 썼니 — 가벼운 가계부

오늘 쓴 돈을 한 줄씩 적어 두기만 하면 끝. 항목 이름과 금액 두 필드뿐이라 30초면 끝납니다.

<p align="center">
  <img src="assets/release_hdr_ledger.png" alt="썼니(가계부) 카드" width="300" />
</p>

### 3. 했니 — 하루 체크리스트

오늘 해야 할 일, 또는 매일 반복하는 습관을 체크박스로. 채울 때마다 작은 성취감이 따라옵니다.

<p align="center">
  <img src="assets/release_hdr_checklist.png" alt="했니(체크리스트) 카드" width="300" />
</p>

### 4. 기록 — 무엇이든 숫자로

체중, 운동 횟수, 수면 시간, 공부 시간 — 숫자로 남기고 싶은 건 무엇이든. 같은 항목을 매일 입력하면 추세 그래프가 같이 그려집니다.

<p align="center">
  <img src="assets/release_hdr_score.png" alt="기록(숫자) 카드" width="300" />
</p>

### 5. 기분 — 캐릭터로 표현하는 오늘의 마음

곰 / 고양이 / 강아지 / 토끼 네 가지 캐릭터 중 하나를 고르고, 각 8가지 표정 (행복 / 슬픔 / 화남 / 사랑 / 놀람 / 졸림 / 웃음 / 부끄러움) 으로 그날의 기분을 남깁니다.

<p align="center">
  <img src="assets/mood_picker_open.png" alt="기분 선택 화면" width="300" />
  &nbsp;
  <img src="assets/mood_settings_concepts.png" alt="기분 캐릭터 설정" width="300" />
</p>

#### 이 달의 기분 배지

이번 달에 가장 많이 선택한 기분이, 달력 상단 **년·월·일** 왼쪽·오른쪽에 **GIF 배지**로 살아 움직입니다.
좌측(큰 배지)은 **1위(가장 많이 기록한 기분)** 이고, **등록 횟수가 같으면 가장 최근에 남긴 기분**이 왼쪽에 크게 표시됩니다.
우측(작은 배지)은 2위 기분입니다. 한 가지 기분만 있으면 좌·우에 같은 캐릭터가 보이고, 한 개도 없는 달은 배지가 숨겨집니다.

<p align="center">
  <img src="assets/month_mood_badge.png" alt="월별 기분 배지" width="300" />
</p>

#### 한 셀에 하루를 다 보여주는 4 모서리 인디케이터

각 날짜 셀의 **네 모서리**에 그날 무엇을 기록했는지 작은 컬러 아이콘으로 표시됩니다.
실제로 글자가 한 줄이라도 적혀 있을 때만 아이콘이 켜지고, 빈 카테고리는 칸이 비워집니다.

| 위치 | 카테고리 | 색 |
|------|----------|------|
| 좌상단 | 오늘은(메모) | 핑크 하트 |
| 우상단 | 썼니(가계부) | 파란 지폐 |
| 좌하단 | 했니(체크리스트) | 초록 체크 |
| 우하단 | 기록(숫자 모음) | 보라 꺾은선 |
| 가운데 | 그날의 기분(있을 때만) | 캐릭터 PNG |

<p align="center">
  <img src="assets/calendar_landscape.png" alt="가로 모드 달력 — 4 모서리 인디케이터" width="520" />
</p>

### 6. 기록 차트 (월별 요약)

한 달 치 **기분 · 썼니 · 했니 · 기록(숫자)** 를 한 화면에서 볼 수 있는 통계 탭입니다.
접었다 펼 수 있는 카드 형식으로, 기분은 상위 3개 이모티콘 GIF 크기로 한 달 요약을 보여 주고 (1·2·3위 순서대로 점점 작아지는 podium 형태), 썼니/했니는 0을 기준으로 위·아래 막대 + 누적 꺾은선, 기록(숫자)은 항목별 꺾은선으로 표시됩니다. 각 차트 **좌측에는 최고/중간/0/최저 수치가 작게 표시**되어 한눈에 규모를 가늠할 수 있습니다.

<p align="center">
  <img src="assets/chart_monthly_teen.png" alt="기록 차트 월별 통계 화면" width="320" />
</p>

<p align="center">
  <img src="assets/release_drawer_chart.png" alt="기록 차트 메뉴" width="280" />
</p>

### 7. 홈 화면 위젯 (Android)

안드로이드 **홈 화면**에 **1×1 위젯**을 추가할 수 있습니다. 위젯 목록에서 앱 이름(**요미 달력**, **Yomi Calendar** 등, 기기·스토어·언어에 따라 표시가 다를 수 있음)으로 항목을 찾아 바탕화면에 놓으면 됩니다.

- **내용**: **오늘의 날짜 숫자(일)** 와, 앱에서 마지막으로 맞춰 둔 **기분 캐릭터** 이미지가 보입니다. 
- **Android 12 (API 31) 이상**: 위젯 안에서 기분 **GIF**가 움직이도록 표시됩니다.
- **Android 11 이하**: 홈 위젯에서 GIF 애니메이션을 안정적으로 쓰기 어려운 제약이 있어, **정적인 베어 아이콘**으로 대신 표시됩니다.
- **탭**: 위젯을 누르면 앱이 열립니다. 기분을 바꾼 뒤에는 잠시 후 위젯이 다시 그려지며, 바로 반영이 안 보이면 위젯을 한 번 제거했다가 다시 추가해 보세요.

> 위젯은 **오프라인**에서도 동작하며, 인터넷 연결 없이 휴대폰에 저장된 기분 설정을 읽습니다.

### 8. 로그인 (선택) — F.1.07

**앱을 나만 보고 싶을 때 쓰는 비밀번호 잠금 기능**입니다. (클라우드 **회원 가입이 아닙니다.**) 달력·메모·가계부 내용과 비밀번호 **평문은 어디로도 보내지 않으며**, 비밀번호는 기기 안에 **암호화되어** 저장됩니다. 최초 설정·재설정 때에만 **본인 이메일로 일회성 인증 코드**가 발송됩니다.

휴대폰을 분실해 저장소에서 **해시만** 빼낸 뒤 무차별 대입한다고 가정할 때의 **대략적인 체감**(비밀번호 종류·도난자 장비에 따라 크게 달라짐):

| 도난자가 쓰는 장비 (오프라인 대입) | 비밀번호 예시 | 대략 걸리는 시간 (순서) |
|----------------------------------|---------------|-------------------------|
| **중급 PC** (6코어급 CPU 또는 일반 GPU) | 정책을 지킨 10~12자, 추측하기 어려운 조합 | **수년 ~ 수십 년 이상** |
| 같은 PC | 8자, 흔한 단어·생일 등 | **며칠 ~ 수개월** |
| **최신 스마트폰만** (PC 없이) | 위와 동일 | PC보다 보통 **수십 배 느림** → 시간 더 김 |

→ **강한 비밀번호**를 쓸수록 분실·도난 후에도 안전 마진이 커집니다. 완전한 보장은 없습니다.

설정 맨 아래 **「로그인 기능 사용」** 을 켜면:

- **설정:** 이메일 입력 → **이메일로 받은 인증 코드** 입력(**발송 후 5분** 유효) → 비밀번호 등록(영문·숫자·특수문자, **8자 이상**)
- **실행 시:** 등록한 이메일·비밀번호로 잠금 해제 후 달력 사용
- **비밀번호 재설정:** 로그인 화면에서 기존 비밀번호 폐기 후, 같은 이메일로 인증·새 비밀번호 등록
- **비밀번호 표시:** 입력 칸 옆 **눈 아이콘**으로 보기/숨기기
- **저장:** 비밀번호는 기기 안에 **해시**로만 남고, 평문은 저장되지 않습니다

인증 메일 발송에만 [Vercel `dailylog` 프로젝트](https://vercel.com/yourboardlab-s-projects/dailylog) API를 씁니다. **일기·가계부 본문은 전송하지 않습니다.**

<p align="center">
  <img src="assets/auth_settings_login.jpg" alt="설정 — 로그인 기능 사용 및 가입 완료" width="300" />
</p>

<p align="center">
  <img src="assets/auth_wizard_email.jpg" alt="가입 1단계 — 이메일" width="240" />
  &nbsp;
  <img src="assets/auth_wizard_verify.jpg" alt="가입 2단계 — 인증 코드(5분)" width="240" />
</p>
<p align="center">
  <img src="assets/auth_wizard_password.jpg" alt="가입 3단계 — 비밀번호" width="240" />
  &nbsp;
  <img src="assets/auth_gate_login.jpg" alt="앱 실행 시 로그인 화면" width="240" />
</p>

---

## 가로 모드 (Landscape)

휴대폰을 옆으로 돌리면 더 많은 정보가 한 화면에 들어옵니다.
**달력 화면**은 좌측 캘린더 + 우측 카드 2단으로, **기록 차트**는 4개 카드가 **2×2 격자**로 펼쳐집니다.

<p align="center">
  <img src="assets/chart_monthly_landscape.png" alt="가로 모드 기록 차트" width="520" />
</p>

### 회전 동작 설정

설정의 **「화면 회전 허용」** 토글로 동작을 고를 수 있습니다. (F.1.07 기준 설정 순서: **언어 → 화면 회전 → 기분 캐릭터 → 색상 테마 → 데이터보내기/불러오기 → 로그인**)

| 토글 | 동작 |
|------|------|
| **OFF (기본)** | 휴대폰을 돌려도 **항상 세로 모드** 유지 |
| **ON** | 휴대폰 회전 따라 **세로 ↔ 가로 자동 전환** |

안드로이드(Capacitor) 빌드에서는 **Activity 방향**과 웹 화면 설정을 같이 맞춥니다. 일부 WebView 에서 브라우저 회전 API 가 무시되더라도, 회전을 끈 상태에서는 **가로 전용 달력·차트 레이아웃**이 잘못 켜지지 않도록 보완되어 있습니다.

---

## 색상 테마

다크 모드와 라이트 모드 사이의 어딘가 — **파스텔 톤 8가지**.
midnight / paper / mint / peach / lavender / sky / rose / sand 중에서 그날의 기분에 맞게 골라 보세요.

> 이 페이지의 스크린샷은 모두 **paper(라이트)** 톤으로 캡처되었습니다.

<p align="center">
  <img src="assets/theme_settings_swatches.png" alt="색상 테마 선택" width="300" />
</p>

---

## 다국어 지원 (Languages)

기본은 한국어이지만 설정의 **언어** 콤보박스에서 다음 언어로 한 번에 전환할 수 있습니다.
콤보박스의 옵션 라벨은 각 언어의 **자국어 표기**로 표시되어, 다른 나라 언어를 잘 모르더라도 자기 모국어를 한눈에 찾을 수 있습니다.

영어는 **미국·영국 공휴일**을 각각 쓰도록 두 가지로 나뉩니다. 화면 문구(카드 이름 등)는 동일한 영어 사전을 쓰고, **달력에 쓰이는 공휴일 목록만** US / GB 로 갈립니다.

| 언어 | 콤보박스 표시 | 카드 4종 |
|------|----------------|----------|
| 한국어 (기본) | 한국어 | 오늘은 / 썼니 / 했니 / 기록 |
| English (American) | English (American) | Today / Spent? / Done? / Stats |
| English (British) | English (British) | Today / Spent? / Done? / Stats |
| 中文 | 中文 | 今天 / 花了？ / 做了？ / 记录 |
| 日本語 | 日本語 | 今日は / 使った？ / やった？ / 記録 |
| Tagalog | Tagalog | Ngayon / Gastos? / Tapos na? / Tala |
| Tiếng Việt | Tiếng Việt | Hôm nay / Tiêu? / Xong chưa? / Số liệu |
| Русский | Русский | Сегодня / Потратил? / Сделал? / Записи |
| Español | Español | Hoy / ¿Gasté? / ¿Hecho? / Registros |
| Deutsch | Deutsch | Heute / Ausgegeben? / Erledigt? / Werte |
| Français | Français | Aujourd'hui / Dépensé ? / Fait ? / Suivi |

> "오늘은"·"기록"은 일상어 그대로 옮겼고, **"썼니"·"했니"의 짧고 캐주얼한 어감**은 각 언어에서도 짧은 의문형으로 살렸습니다 (Spent? / Done?, 使った？ / やった？ 등).  
> 예전에 저장된 데이터에 `English` 한 가지만 있었다면, 앱이 자동으로 **English (American)** 으로 바꿉니다.

설정 화면의 **언어** 행은 토글 스위치와 맞춘 **둥근 콤보** 형태로 표시되어, 기기 기본 `select` 느낌과 구분됩니다.

### 달력: 요일 색과 국가별 공휴일

- **일요일** 날짜 숫자는 **붉은색**, **토요일**은 **파란색**으로 표시합니다.
- **공휴일**이 있는 날은 날짜 숫자도 **붉은색**으로 강조합니다. (토요일이면서 공휴일이면 공휴일 색이 우선합니다.) 셀 **맨 아래**에는 해당 국가 API가 내려주는 **현지 이름**을 짧게 붙입니다. 예를 들어 한국어 설정이면 **「추석」**처럼 한글 표기가 나올 수 있고, 같은 날 여러 공휴일이면 ` · ` 로 이어서 보여 줍니다.
- 공휴일 목록은 [Nager.Date](https://date.nager.at) 공개 API(연도·국가 코드 단위)를 사용합니다. **해당 연도·국가를 처음 볼 때** 한 번 네트워크로 받아 오며, 이후에는 기기에 **캐시**되어 같은 달을 다시 열 때는 끊긴 상태에서도 표시가 유지되는 경우가 많습니다. **언어**를 바꾸거나 **달력의 연·월**을 바꾸면 필요한 연도를 자동으로 다시 맞춥니다.

**언어(콤보박스) → 공휴일 기준 국가**

| 언어(콤보박스) | 공휴일 API 국가 코드 |
|----------------|----------------------|
| 한국어 | KR |
| English (American) | US |
| English (British) | GB |
| 中文 | CN |
| 日本語 | JP |
| Tagalog | PH |
| Tiếng Việt | VN |
| Русский | RU |
| Español | ES |
| Deutsch | DE |
| Français | FR |

---

## 데이터는 어디 저장되나요?

- **전부 휴대폰 안에만** 저장됩니다. 서버에 전송되지 않습니다.
- 로그인, 회원가입, 광고 식별자 추적 — 없습니다.
- 백업이 필요할 땐 **설정 → 내보내기** 로 기록을 **하나의 ZIP 파일**로 저장할 수 있고, **불러오기** 로 새 기기에서 그대로 복원할 수 있습니다.

<p align="center">
  <img src="assets/auth_settings_login.jpg" alt="설정 화면 (언어·보내기·로그인)" width="300" />
</p>

---

## 개인정보처리방침 · Privacy Policy

> **Google Play 등 스토어 등록용 공개 URL**  
> `https://github.com/yourboardlab/calendar_readme#개인정보처리방침--privacy-policy`  
> **최종 업데이트:** 2026-05-27 · **앱:** 요미 달력 (Yomi Calendar) **F.1.07** · **운영:** yourboardlab

### 한국어

**1. 개요**  
yourboardlab(이하 “개발자”)이 제공하는 **요미 달력**(Yomi Calendar)은 사용자가 직접 입력한 일기·메모·가계부·체크·기록·기분 데이터를 **사용자 기기 안에만** 저장하는 앱입니다. **로그인은 선택**이며, 켠 경우에만 이메일·비밀번호 해시가 기기에 저장됩니다. 인증 코드 메일 발송 시 [Vercel dailylog](https://vercel.com/yourboardlab-s-projects/dailylog) API를 사용하며, 일기 본문은 전송하지 않습니다. 클라우드 동기화·광고 식별자 추적은 하지 않습니다.

**2. 수집·처리하는 정보**

| 구분 | 내용 | 저장 위치 |
|------|------|-----------|
| 사용자 입력 | 메모(오늘은), 가계부(썼니), 체크(했니), 숫자 기록, 기분, 설정(테마·언어·회전 등) | 기기 내부 저장소만 |
| 로그인(선택) | 이메일, 비밀번호 **해시**, 마지막 로그인 이메일 | 기기 내부 저장소만 |
| 인증 메일 | 로그인 가입·재설정 시 **이메일 주소·인증 코드·서명** | Vercel `dailylog` → SMTP (본문은 사용자 메일함만) |
| 백업 파일 | 설정에서 **데이터보내기** 시 사용자가 만든 ZIP(v4) | 사용자가 선택한 위치(파일 앱 등) |
| 공휴일 조회 | 설정 언어에 대응하는 **국가 코드**와 **연도** | 공휴일 API 요청 시에만 전송(아래 3항) |
| 위젯 표시 | 오늘 날짜·기분·오늘은·체크 요약 등 앱과 동기화한 최소 정보 | 기기 내부(Android 위젯용 설정) |

개발자는 **이름, 이메일, 전화번호, 위치, 연락처, 사진** 등을 앱 안에서 수집하지 않습니다.

**3. 제3자 서비스**  
- **공휴일 API:** [Nager.Date](https://date.nager.at) 공개 API를 사용합니다. 달력에 해당 연도·국가의 공휴일 이름을 표시하기 위해 **연도·국가 코드** 수준의 요청이 이루어질 수 있습니다. 사용자가 작성한 메모 본문 등은 전송하지 않습니다.  
- 응답은 기기에 **캐시**되어, 이후 같은 연·월을 볼 때 네트워크 없이도 표시될 수 있습니다.

**4. 이용 목적**  
- 앱 기능 제공(달력 표시, 기록·차트, 홈 화면 위젯, 알람 알림 등)  
- 사용자 설정 반영(언어, 테마, 기분 캐릭터 등)  
- 사용자가 요청한 **보내기·불러오기**

**5. 보관 기간**  
- 앱 데이터: 사용자가 **삭제·앱 제거·데이터 초기화**할 때까지 기기에 보관됩니다.  
- 공휴일 캐시: 기기 내부에 일정 기간 보관 후 갱신될 수 있습니다.

**6. 제3자 제공·판매**  
개발자는 사용자 데이터를 **판매하거나**, 광고 목적으로 **제3자와 공유하지 않습니다.**

**7. 권한 (Android)**  
| 권한 | 용도 |
|------|------|
| 인터넷 | 공휴일 API 조회(해당 기능 사용 시) |
| 부팅 완료 수신 | 홈 화면 위젯 날짜 갱신 |
| 정확한 알람 | 사용자가 설정한 **알람** 알림 예약 |

**8. 아동**  
앱은 만 13세 미만을 대상으로 설계되지 않았으며, 개발자는 아동의 개인정보를 고의로 수집하지 않습니다.

**9. 국제 이전**  
사용자 입력 데이터는 사용자 기기에만 남습니다. 공휴일 API 요청 시 해당 API 운영자의 서버가 해외에 있을 수 있습니다.

**10. 이용자 권리**  
- 앱 **설정 →보내기**로 데이터를 ZIP으로 받을 수 있습니다.  
- **불러오기**·앱 삭제·기기 초기화로 데이터를 지울 수 있습니다.  
- 문의: **yourboardlab@gmail.com**

**11. 정책 변경**  
중요한 변경 시 이 README를 갱신하고, 필요한 경우 앱 또는 스토어를 통해 안내할 수 있습니다.

---

### English

**1. Overview**  
**Yomi Calendar** (요미 달력), operated by **yourboardlab** (“we”, “developer”), stores the records you enter—memos, ledger lines, checklists, numeric logs, and moods—**on your device only**. We do not require accounts, cloud sync, or ad tracking.

**2. Information we process**

| Type | Examples | Where it stays |
|------|----------|----------------|
| Your entries | Memos, expenses, checklists, scores, moods, app settings | On-device storage only |
| Backup ZIP | Created when you tap **Export** in Settings | Where you save the file |
| Public holidays | **Country code** and **year** derived from your language setting | Sent only when calling the holiday API (see §3) |
| Home widget | Today’s date, mood, short memo/checklist summaries synced from the app | On-device (Android widget preferences) |

We do **not** collect your name, email, phone number, contacts, photos, or precise location inside the app.

**3. Third-party services**  
- **Holiday API:** We use the public [Nager.Date](https://date.nager.at) API to show public holiday names on the calendar. Requests may include **year** and **country code** only—not the text of your memos.  
- Responses may be **cached on your device** for offline reuse.

**4. Purposes**  
- Provide app features (calendar, charts, home-screen widget, alarm notifications)  
- Apply your preferences (language, theme, mood character, etc.)  
- **Import / export** when you choose

**5. Retention**  
- App data remains on your device until you delete it, clear app data, or uninstall.  
- Holiday cache may expire and refresh over time.

**6. Sharing / sale**  
We **do not sell** your data or share it with third parties for advertising.

**7. Android permissions**

| Permission | Purpose |
|------------|---------|
| Internet | Fetch public holidays when needed |
| Receive boot completed | Refresh the home-screen widget date |
| Schedule exact alarms | Deliver **alarms** you set in the app |

**8. Children**  
The app is not directed at children under 13, and we do not knowingly collect their personal information.

**9. International transfers**  
Your entries stay on your device. Holiday API requests may reach servers operated outside your country.

**10. Your choices**  
- **Export** your data as a ZIP from Settings.  
- **Import**, uninstall, or reset the app to remove data.  
- Contact: **yourboardlab@gmail.com**

**11. Changes**  
We may update this policy by revising this README and, when appropriate, notifying users via the app or store listing.

---

## 지원 / 문의

- 사용 중 문제, 새로운 기분 캐릭터 / 테마 제안, 혹은 단순한 후기 — 모두 환영합니다.
- 이슈 등록: [Issues 탭](https://github.com/yourboardlab/calendar_readme/issues/new) 에 자유롭게 글을 남겨 주세요.
  - 제목 한 줄과 어떤 화면에서 일어난 일인지만 적어 주시면 충분합니다.
- 비지니스 및 문의 사항은 e-mail 주소 : **yourboardlab@gmail.com** 으로 연락 바랍니다.
- 홈페이지: [yourboardlab.github.io](https://yourboardlab.github.io/)
- 소개 영상: [YouTube — 요미 달력 소개](https://youtu.be/QZBNNUx_LD0)
- 개인정보처리방침: [이 README의 개인정보처리방침 섹션](https://github.com/yourboardlab/calendar_readme#개인정보처리방침--privacy-policy)

---

## FAQ

**Q. 인터넷 연결이 끊겨도 쓸 수 있나요?**
네. 메모·가계부·체크·기록·기분·위젯 등 **핵심 기능은 오프라인**에서 동작합니다. 다만 **국가별 공휴일** 이름을 달력에 처음 채울 때는 공휴일 API 를 한 번 불러와야 하므로 그 순간만 **인터넷이 있으면** 좋고, 받아 둔 연도·국가 조합은 기기에 잠시 **캐시**됩니다.

**Q. iOS 버전은 언제 나오나요?**
현재까지는 계획이 없습니다. iOS 버전을 개발하기 위해서는 추가 개발 비용이 발생합니다. 필요하신 분은 e-mail 로 문의해 주세요.

**Q. 데이터가 다른 기기로 옮겨지나요?**  
설정에서 **데이터보내기 → ZIP** 으로 백업한 뒤, 새 기기에서 **데이터 불러오기**로 복원하세요. F.1.07부터 ZIP에 **설정과 로그인(해시)** 도 포함됩니다. 로그인을 켜 두었다면 같은 비밀번호로 바로 잠금 해제할 수 있습니다.

**Q. 로그인을 꼭 써야 하나요?**  
아니요. 기본은 로그인 없이 사용합니다. 원할 때만 설정에서 켜면 됩니다.

**Q. 인증 메일이 안 와요.**  
인터넷·스팸함·이메일 오타를 확인해 주세요. 발송은 [Vercel dailylog](https://vercel.com/yourboardlab-s-projects/dailylog) 백엔드를 쓰며, 과도한 요청 시 일시 제한될 수 있습니다.

**Q. 사용료가 있나요?**
광고없는 무료 앱입니다. 마음껏 사용하세요.

**Q. 홈 화면 위젯은 어떻게 쓰나요?**
안드로이드에서 바탕화면을 길게 누른 뒤 **위젯**을 선택하고, 목록에서 이 앱의 위젯을 찾아 추가하면 됩니다. Android 12 이상에서는 기분 GIF가, 그보다 낮은 버전에서는 정적 아이콘이 보입니다. 자세한 동작은 위 **「7. 홈 화면 위젯 (Android)」** 항목을 참고하세요.

**Q. 새로운 기능을 추가해 주실 수 있나요?**
추가적인 기능 개발은 개발비용이 발생합니다. e-mail 로 문의해 주세요.

---

## 변경 이력 (F.1.07)

| 버전 | 날짜 | 요약 |
|------|------|------|
| **F.1.07** | 2026-05-27 | 선택 로그인(이메일 인증·재설정), ZIP v4(설정·로그인 포함), 설정 UI 정리, 월 기분 배지 동률→최근 우선, 아이콘 가독성 |
| F.1.06 | 2026-05 | Android 14~16 위젯 안정화, 달력 스와이프·월 이동 UX |
| F.1.04 | 2026-05-19 | 공휴일 API, 홈 위젯, 가로 모드 |

코드 저장소 릴리스 노트: [yourboardlab/dailylog `release.txt`](https://github.com/yourboardlab/dailylog/blob/main/release.txt)

---

## 라이선스 / 저작권

- 앱 자체의 코드 라이선스는 별도 비공개 저장소에서 관리됩니다.
- 이 저장소(`calendar_readme`)의 텍스트와 스크린샷은 © 2026 yourboardlab. All rights reserved.
- 사용된 캐릭터 자산은 yourboardlab 의 PNG/GIF 입니다.

---

<p align="center">
  <em>오늘을 가볍게 남기는 습관이, 어느 날 가장 따뜻한 기록이 됩니다.</em>
</p>
