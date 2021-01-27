-- MariaDB dump 10.17  Distrib 10.4.14-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: a1
-- ------------------------------------------------------
-- Server version	10.4.14-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `article`
--

DROP TABLE IF EXISTS `article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `article` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(30) NOT NULL,
  `body` text NOT NULL,
  `count` int(10) unsigned NOT NULL DEFAULT 0,
  `boardId` int(10) unsigned NOT NULL DEFAULT 0,
  `memberId` int(10) unsigned NOT NULL DEFAULT 1,
  `regDate` datetime NOT NULL,
  `updateDate` datetime NOT NULL,
  `likesCount` int(10) unsigned NOT NULL DEFAULT 0,
  `commentsCount` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `article`
--

LOCK TABLES `article` WRITE;
/*!40000 ALTER TABLE `article` DISABLE KEYS */;
INSERT INTO `article` VALUES (1,'💌사이트 안내','# 🎈안녕하세요 코린이 Je-ya입니다!<br/>\r\nQ. 이곳은 무슨 사이트 인가요?\r\n**이 블로그는 개발을 갓 배우기 시작한 제가 처음으로 만든 홈페이지 입니다!😎**\r\n```\r\n개발 공부와 관련된 글들과 직접 만든 디자인물 등을 업로드하려고 해요?\r\n아직은 많이 부족하지만😂배우고 있는 기능들로 계속 업데이트하겠습니다 :)\r\n```',7,1,1,'2020-12-20 03:25:50','2021-01-27 23:43:43',1,2),(2,'MySQL 기본명령어 모음집_1탄','# 🚩내가 보려고 만드는 MySQL 기본명령어 모읍집 -- 1탄\r\n# 👀 데이터 조회하기!\r\n설명순서는 큰 단위에서 작은 단위 순으로!\r\n***\r\n<br>\r\n<br>\r\n## 🔎 데이터베이스 조회 (a.k.a 데이터가 모여있는 폴더)\r\n## `SHOW DATABASES;`\r\n##### 👉 생성되어 있는 데이터베이스의 목록을 조회합니다. \r\n\r\n<br>\r\n\r\n## 🔎 테이블 조회 (a.k.a 하나의 엑셀파일)\r\n## `SHOW TABLES`;\r\n##### 👉 선택되어 있는 데이터베이스 안에 만들어져 있는 테이블들의 목록을 조회합니다. \r\n<br>\r\n```\r\n✅ USE a1;\r\n---- \'a1\' 이라는 데이터베이스를 선택합니다. \r\n```\r\n<br>\r\n\r\n## `DESC \'테이블명\';`\r\n##### 👉 선택한 테이블의 칼럼구조와 속성을 조회합니다.\r\n<br>\r\n<br>\r\n<br>\r\n## 🔎 ROW(로우) 조회를 위한 명령어 (a.k.a 엑셀파일의 한 행, 실질적인 데이터가 들어있는 곳)\r\n\r\n\r\n## `SELECT id;`\r\n##### 👉 id 칼럼의 row의 값을 선택하여 조회합니다.\r\n<br>\r\n```\r\n✅ SELECT id FROM article;\r\n--',1,2,1,'2020-12-21 03:25:50','2021-01-27 23:43:44',0,0),(3,'MySQL 기본명령어 모음집_2탄','# 🚩내가 보려고 만드는 MySQL 기본명령어 모읍집 -- 2탄\r\n# 🎁 데이터 생성하기!\r\n설명순서는 큰 단위에서 작은 단위 순으로!\r\n***\r\n<br>\r\n<br>\r\n## 🔎 데이터베이스 생성하기 (a.k.a 데이터를 모을 폴더를 만들자)\r\n## `CREATE DATABASES 데이터베이스명;`\r\n##### 👉 데이터베이스를 생성합니다.  \r\n\r\n<br>\r\n\r\n## 🔎 테이블 구조 및 칼럼 생성 (a.k.a 하나의 엑셀파일과 그 안의 항목을 만들자)\r\n## `CRATE TABLES(COLUMN 내용);`;\r\n##### 👉 괄호 안에 만들어낼 COLUMN 내용과 속성을 지정합니다.  \r\n<br>\r\n```\r\n✅ CREATE TABLES article (\r\n id INT(10),\r\n title char(30)\r\n);\r\n\r\n----- article 이라는 테이블을 만들고 그 안에 숫자형 데이터 id와 문자 데이터를 갖는 title 칼럼을 생성합니다. \r\n```\r\n<br>\r\n\r\n## `주로 쓰는 COLUMN 속성들`\r\n```\r\n✅ INT(10) : 숫자형 데이터. 괄호 안의 숫자는 입력되는 값의 자릿수를 의미합니다. \r\n\r\n✅ AUTO_INCREMENT : 숫자가 자동으로 증가합니다.\r\n\r\n✅ PRIMATY KEY() : \'기본 키\'. 데이터를 구분하기 위해 괄호안의 항목에 제약을 겁니다. \r\n\r\n✅ DATETIME : \'시간\' 을 나타냅니다. \r\n\r\n✅ VARCHAR(100) : 문자 데이터 속성입니다. 괄호의 숫자는 영문기준으로 100개의 문자가 저장될 수 있으며, 한글 기준으로 대략 30자 정도 입력될 수 있음을 나타냅니다.(한글은 1글자 당 약 3바이트). ~256까지 사용가능 하며, 데이터의 길이를 예측하기 힘들거나 변경할 가능성이 낮을 때 사용합니다. \r\n\r\n✅ CHAR(): 마찬가지로 문자 데이터 이며, 데이터의 길이가 고정되어 있기 때문에 메모리 차지가 덜 합니다.\r\n\r\n✅ TEXT : 문자를 아주 많이 입력해야 할 때 사용 합니다. (EX. 게시글의 본문 등)\r\n\r\n✅ NOT NULL : ROW값에 NULL을 받을 수 없습니다. \r\n```\r\n<BR>\r\n<BR>\r\n## 🔎 ROW(로우) 값을 생성하기 (a.k.a 항목에 맞는 값을 넣어주자)\r\n## `INSERT INTO 테이블명 SET 칼럼명 = 값 `\r\n##### 👉 값을 입력할 때는 모든 항목의 값을 빠짐없이 입력해야 합니다\r\n<br>\r\n```\r\n✅ INSERT INTO article\r\nSET id = 10, \r\ntitle = \'안녕\' : 텍스트 작성 시 작은 따옴표 사용\r\nregDate = NOW() : 현재 시간을 나타냅니다\r\n`body` = \'헬로\'; : sql에 내장되어 있는 단어의 경우 백틱(`)으로 구분합니다.\r\n마지막 항목 작성 후 ; 로 작성 마무리를 합니다. \r\n```\r\n',2,2,1,'2020-12-21 00:16:22','2021-01-27 23:43:44',0,0),(4,'CSS 선택자를 알아보자!','# 🌈 CSS 기본선택자!\r\n<br>\r\n## 크게 3가지 선택자로 구분지을 수 있어요!\r\n\r\n## 👉`자식선택자;`\r\n\r\n## 👉`형제선택자;`\r\n\r\n## 👉`후손(손자)선택자;`\r\n<br>\r\n## ✅ 자식 선택자 \' > \'\r\n\r\n##### 부모 바로 밑의 직계자식을 선택합니다\r\n<br>\r\n```\r\n<section>\r\n <div>\r\n <cell>\r\n </cell>\r\n </div>\r\n <div>\r\n <cell>\r\n </cell>\r\n </div>\r\n</section>\r\n```\r\n##### 😃section > div \r\n> div 2개가 선택됩니다. \r\n<br>\r\n<br>\r\n## ✅ 인접형제 선택자 \' + \'\r\n\r\n##### 인접해있는(붙어있는) 형제 선택자를 선택합니다! \r\n<br>\r\n```\r\n<section>\r\n <div1>\r\n <cell>\r\n </cell>\r\n </div1>\r\n <div2>\r\n <cell>\r\n </cell>\r\n </div2>\r\n <div3>\r\n <cell>\r\n </cell>\r\n </div3>\r\n</section>\r\n```\r\n##### 😃 section > div1 + div2 \r\n> : div1과 인접해있는 div2를 선택할 수 있습니다.\r\n> : 인접된 형제를 선택하므로  div1은 div3은 선택할 수 없습니다. \r\n<br>\r\n<br>\r\n## ✅ 후손(손자)선택자  \" \"\r\n\r\n##### 해당 엘리먼트에 속한 자식 또는 후손을 모두 선택할 수 있습니다 \r\n<br>\r\n```\r\n<section>\r\n <div1 class =\"child\">\r\n <cell>\r\n </cell>\r\n </div1>\r\n <div2 class =\"child\">\r\n <cell>\r\n </cell>\r\n </div2>\r\n <div3 class =\"child\">\r\n <cell>\r\n </cell>\r\n </div3>\r\n</section>\r\n```\r\n##### 😃 section  cell \r\n> section 에 속한 모든 cell 를 선택합니다. \r\n##### 😃 section  .child \r\n> section 에 속한 클래스명이 .child인 엘리먼트를 모두 선택합니다. ',8,2,1,'2020-12-23 11:08:35','2021-01-27 23:43:44',0,0),(5,'CSS display속성을 알아보자!','# 🌈 CSS display에 대해 알아보자!\r\n<br>\r\n## 주로 3가지 기능을 많이 사용해요! \r\n## 👉`inline-block;`\r\n\r\n## 👉`block;`\r\n\r\n## 👉`flex;`\r\n> flex는 내용이 아주 많은 관계로 다음편에서 정리해볼께요! : )\r\n\r\n\r\n<br>\r\n<br>\r\n## ✅ inline-block\r\n\r\n##### 😃엘리먼트들이 기본적으로 줄바꿈 없이 한줄에 나란히 배치되요!\r\n<br>\r\n👉 감싸고 있는 콘텐츠 크기에 맞춰 최소한으로 유연하게 줄어드는 특징을 가져요!\r\n( 글자 크기에 딱 맞춰 배경색을 지정해야 할 때 주로 사용해요!) \r\n<br>\r\n👉 감싸고 있는 콘텐츠가 없다면 크기가 아예 사라집니다!\r\n<br>\r\n👉 inline의 속성을 가지고 있기 때문에 가능한 범위라면 한줄을 여럿이 함께 사용합니다!\r\n<br>\r\n👉 글자요소들은 기본적으로 inline 속성을 가지고 있는데, 이건 magin이나 padding을 사용할 수 없어요 ㅠ 하지만 inline-block은 가능합니다! \r\n\r\n\r\n## ✅ block\r\n\r\n##### 😃엘리먼트들이 마치 블럭처럼 쌓이는 모습이에요!\r\n<br>\r\n👉 block으로 지정된 엘리먼트들은 줄바꿈이 들어가 한 줄을 혼자 차지하는 모습을 보여요! \r\n<br>\r\n👉 최대한 유연하게 늘어나는 속성을 가지고 있어요! \r\nex. a태그는 기본적으로 inline 속성이라 범위가 넓지 않아요. 이럴 때\r\n클릭범위를 넓히기 위해서 block 속성을 지정해줍니다! ',5,2,1,'2020-12-23 11:31:26','2021-01-27 23:43:45',0,0),(6,'💚JEYA-BLOG 탄생로그 -- 1','# JEYA-BLOG 탄생로그💚\r\n> 메인 홈 디자인 잡기 \r\n```youtube\r\nGZSwIW3tUJo\r\n```\r\n\r\n남들이 원하는 디자인만 하다보니 디자인은 이제 하기 싫다고 말했는데\r\n막상, 내 취향만 가득 담은 디자인을 하니 너무 재밌다. \r\n현실은 내가 원하는 것만 할 수는 없을테니, 이럴 때라도 맘껏 즐겨야겠다. ',7,3,1,'2020-12-29 01:06:14','2021-01-27 23:43:45',0,0),(7,'💚JEYA-BLOG 탄생로그 -- 2','# JEYA-BLOG 탄생로그💚\r\n> 메인 홈 디자인 잡기 \r\n```youtube\r\n2knN2HwzwFw\r\n```\r\n\r\n2개월 내내 배웠던 리스트만들기 코드를 화면에 구현하게 되었다.  \r\n코드 위치나 반복문 사용 등의 과정에서 \r\n내가 원하는 모양으로 나오지 않으니까 너무 답답했다. \r\n이것저것 시도해보다가 딱 원하는 모습이 나왔을 때는 \r\n고구마 100개가 시원하게 내려가는 느낌이었다ㅋㅋㅋㅋㅋ\r\n하지만 이것은 시작에 불과했고 그 이후의 작업은 \r\n산 넘어 산이었다  \r\n  ',6,3,1,'2021-01-07 04:14:11','2021-01-27 23:43:45',0,0),(8,'💚JEYA-BLOG 탄생로그 -- 3','# JEYA-BLOG 탄생로그💚\r\n> 메인 홈 디자인 잡기 \r\n```youtube\r\nT-hLyBj-KoA\r\n```\r\n\r\n프론트와 백을 함께 배우면서 내 적성에는 뭐가 제일\r\n잘 맞을까 수도 없어 고민하고 있는데 \r\n이 사이트 만드는 과정을 통해서 확실히 나는 프론트를 더 \r\n재밌다고 느끼는 거 같다. \r\n백엔드 부분은 어려운 문제를 풀어냈을 때의 느끼는 쾌감 같을 걸 느낄 수 있지만\r\n그 과정이 나에게는 아직 버겁다... \r\n  \r\n그에 비해 프론트엔드는 내가 작성하는 코드가 구현된 모습을 바로바로 볼 수 있는게 재밌게 느껴진다. \r\n좀 더 고쳐보려고 노력하게 되고, 더 욕심내서 코드를 짜려고 하게 된다. \r\n\r\n  ',9,3,1,'2021-01-07 04:23:06','2021-01-27 23:43:45',0,0),(9,'CSS flex_container 속성 1탄!','# 🌈 CSS display:flex 공부하기 -  container 속성 1탄\r\n\r\n## flex는 엘리먼트의 크기나 위치를 쉽게 잡아주는 도구!\r\n\r\n#### flex를 사용하기 위해서는 컨테이너 태그에 display속성을 부여해야 합니다\r\n```\r\n여기서 컨테이너란, 배치할 요소(자식)들을 감싸고 있는 큰 틀(부모) 같은 존재입니다! \r\n```\r\n<br>\r\n#### 속성은 크게 2가지로 나뉩니다!\r\n## ✅ container에 부여되는 속성\r\n## ✅ Item에 부여되는 속성\r\n#### [container에 부여되는 속성] 먼저 알아볼께요! \r\n<br>\r\n<br>\r\n<br>\r\n## 📐 display\r\n#### 위에서 말했든 컨테이너 태그에 display:flex를 사용해줘야 시작할 수 있어요! \r\n\r\n#### 그래야 자식들인 flex item들을 배치할 수 있습니다! \r\n<br>\r\n<br>\r\n<br>\r\n## 📐 flex-direction\r\n#### flex-direction은 아이템들이 정렬되는 방향을 결정해요! \r\n<br>\r\n## `row (기본값)`\r\n#### 아이템들이 가로방향으로 배치되요! \r\n```\r\n1️⃣ 2️⃣ 3️⃣ \r\n```\r\n<br>\r\n## `row-reverse`\r\n#### 가로방향이지만 배치되지만 거꾸로! 배치되요! \r\n```\r\n3️⃣ 2️⃣ 1️⃣\r\n```\r\n<br>\r\n## `column`\r\n#### 아이템들이 세로방향으로 배치되요! \r\n```\r\n1️⃣\r\n2️⃣\r\n3️⃣\r\n```\r\n<br>\r\n## `column-reverse`\r\n#### 세로방향이지만 배치되지만 거꾸로! 배치되요! \r\n```\r\n3️⃣\r\n2️⃣\r\n1️⃣\r\n```\r\n<br>\r\n<br>\r\n<br>\r\n## 📐 flex-wrap\r\n#### flex-wrap은 아이템들이 한 줄에 함께 있지 못할 정도로 꽉!! 차게 된다면\r\n\r\n#### 어떤 식으로 줄바꿈을 할지 결정합니다! \r\n<br>\r\n## `nowrap (기본값)`\r\n#### 넘쳐서 삐져나가도 자리보존! 줄바꿈을 하지 않아요!  \r\n<br>\r\n## `wrap`\r\n#### 컨테이너의 크기에 따라 줄바꿈을 합니다! float이나 inline-block과 비슷해요! \r\n```\r\n1️⃣2️⃣\r\n3️⃣\r\n```\r\n<br>\r\n## `wrap-reverse`\r\n#### wrap과 비슷하지만 역순으로! 줄바꿈 합니다! 아래가 위로! 위가 아래로! \r\n```\r\n3️⃣\r\n2️⃣1️⃣\r\n```\r\n<br>\r\n<br>\r\n## 👉 container 속성은 다음편에서 계속! \r\n##### ✨자료참고✨\r\n[참고1 --- HEROPY Tech](https://heropy.blog/2018/11/24/css-flexible-box/ ).\r\n[참고2 --- 1분코딩 ](https://studiomeal.com/archives/197 ).',8,2,1,'2021-01-07 05:14:35','2021-01-27 23:43:46',0,0),(10,'CSS flex_container 속성 2탄!','# 🌈 CSS display:flex 공부하기 -  container 속성 2탄\r\n# ✅ justify-content (주축 기준)\r\n# ✅ ailgn-content (교차축 기준)\r\n<br>\r\n<br>\r\n# 📐 justify-content\r\n## 주축의 정렬방법을 설정합니다! \r\n#### 여기서 주축(main-axis)이란 정렬된 아이템들의 중앙을관통하는 하나의 축(직선)을 말합니다. \r\n<br>\r\n#### 🔶 --> start  / 🔷--> end \r\n<br>\r\n<br>\r\n## `flex-start (기본값)`\r\n#### 아이템들의 시작점에 붙어 정렬합니다.  \r\n<br>\r\n#### 👉 direction이 row일때 \r\n<br>\r\n```\r\n🔶1️⃣ 2️⃣ 3️⃣    🔷\r\n```\r\n<br>\r\n#### 👉 direction이 row-reverse일때 \r\n<br>\r\n```\r\n🔷   3️⃣ 2️⃣ 1️⃣🔶\r\n```\r\n<br>\r\n#### 👉 direction이 column일때  \r\n<br>\r\n```\r\n🔶\r\n1️⃣\r\n2️⃣ \r\n3️⃣     \r\n\r\n🔷\r\n```\r\n<br>\r\n#### 👉 direction이 column-reverse일때 \r\n<br>\r\n```\r\n🔷\r\n\r\n3️⃣ \r\n2️⃣ \r\n1️⃣\r\n🔶\r\n```\r\n<br>\r\n<br>\r\n## `flex-end`\r\n#### 아이템들의 끝점에 붙어 정렬합니다.  \r\n<br>\r\n#### 👉 direction이 row일때 \r\n#### 🔶 --> start  / 🔷--> end \r\n<br>\r\n```\r\n🔶   1️⃣ 2️⃣ 3️⃣🔷\r\n```\r\n<br>\r\n#### 👉 direction이 row-reverse일때 \r\n<br>\r\n```\r\n🔷3️⃣ 2️⃣ 1️⃣   🔶\r\n```\r\n<br>\r\n#### 👉 direction이 column일때  \r\n<br>\r\n```\r\n🔶\r\n\r\n1️⃣\r\n2️⃣ \r\n3️⃣     \r\n🔷\r\n```\r\n<br>\r\n#### 👉 direction이 column-reverse일때 \r\n<br>\r\n```\r\n🔷\r\n3️⃣\r\n2️⃣\r\n1️⃣\r\n\r\n🔶\r\n```\r\n<br>\r\n\r\n## `center`\r\n#### 아이템을 가운데 정렬 합니다.   \r\n<br>\r\n#### 👉 direction이 row일때 \r\n<br>\r\n```\r\n🔶   1️⃣ 2️⃣ 3️⃣   🔷\r\n```\r\n<br>\r\n\r\n#### 👉 direction이 column일때  \r\n<br>\r\n```\r\n🔶\r\n\r\n1️⃣\r\n2️⃣ \r\n3️⃣     \r\n\r\n🔷\r\n```\r\n<br>\r\n<br>\r\n## `space-between`\r\n#### 시작 아이템은 시작점에, 마지막 아이템은 끝점에 붙이고 나머지의 간격은 고르게 정렬합니다.    \r\n<br>\r\n#### 👉 direction이 row일때 \r\n<br>\r\n```\r\n🔶1️⃣  2️⃣  3️⃣🔷\r\n```\r\n<br>\r\n\r\n#### 👉 direction이 column일때  \r\n<br>\r\n```\r\n🔶\r\n1️⃣\r\n\r\n2️⃣\r\n\r\n3️⃣     \r\n🔷\r\n```\r\n<br>\r\n<br>\r\n## `space-around`\r\n#### 아이템들의 여백을 균등하게 정렬합니다.    \r\n<br>\r\n#### 👉 direction이 row일때 \r\n<br>\r\n```\r\n🔶 1️⃣  2️⃣  3️⃣ 🔷\r\n```\r\n<br>\r\n\r\n#### 👉 direction이 column일때  \r\n<br>\r\n```\r\n🔶\r\n\r\n1️⃣\r\n\r\n2️⃣\r\n\r\n3️⃣     \r\n\r\n🔷\r\n```\r\n<br>\r\n<br>\r\n<br>\r\n# 📐 align-content\r\n## 교차축의 정렬방법을 설정합니다! \r\n#### 여기서 교차축(cross-axis)이란 정렬된 아이템들이 row일 때는 수직방향, column일때는 수평방향의 축을 말합니다. (주축과 반대방향) \r\n<br>\r\n#### 🔶🔶🔶 --> start  / 🔷🔷🔷--> end \r\n<br>\r\n<br>\r\n## `stretch (기본값)`\r\n#### 교차축을 채우기 위해 아이템을 늘립니다. \r\n<br>\r\n<br> \r\n## `flex-start`\r\n#### 아이템들을 각 줄의 시작점에 붙여 정렬합니다.  \r\n<br>\r\n#### 👉 direction이 row일때 \r\n<br>\r\n```\r\n🔶🔶🔶    \r\n1️⃣ 2️⃣ 3️⃣\r\n\r\n\r\n🔷🔷🔷\r\n```\r\n<br>\r\n#### 👉 direction이 column일때  \r\n<br>\r\n```\r\n🔶1️⃣   🔷 \r\n🔶2️⃣   🔷\r\n🔶3️⃣   🔷\r\n```\r\n<br>\r\n<br>\r\n## `flex-end`\r\n#### 아이템들을 각 줄의 끝점에 붙여 정렬합니다.  \r\n<br>\r\n#### 👉 direction이 row일때 \r\n<br>\r\n```\r\n🔶🔶🔶    \r\n\r\n\r\n1️⃣ 2️⃣ 3️⃣\r\n🔷🔷🔷\r\n```\r\n<br>\r\n#### 👉 direction이 column일때  \r\n<br>\r\n```\r\n🔶   1️⃣🔷 \r\n🔶   2️⃣🔷\r\n🔶   3️⃣🔷\r\n```\r\n<br>\r\n<br>\r\n## `center`\r\n#### 아이템들을 각 줄의 중앙에 정렬합니다.  \r\n<br>\r\n#### 👉 direction이 row일때 \r\n<br>\r\n```\r\n🔶🔶🔶    \r\n\r\n1️⃣ 2️⃣ 3️⃣\r\n\r\n🔷🔷🔷\r\n```\r\n<br>\r\n#### 👉 direction이 column일때  \r\n<br>\r\n```\r\n🔶  1️⃣  🔷 \r\n🔶  2️⃣  🔷\r\n🔶  3️⃣  🔷\r\n```\r\n<br>\r\n<br>\r\n## `baseline`\r\n#### 아이템들의 문자 기준선에 정렬합니다.  \r\n<br>\r\n#### 👉 direction이 row일때 \r\n<br>\r\n```\r\n🔶-----1️⃣ 2️⃣ 3️⃣------\r\n🔷---------------------\r\n\r\n```\r\n<br>\r\n#### 👉 direction이 column일때  \r\n<br>\r\n```\r\n🔶 🔷\r\n .  . \r\n .  .\r\n .  .\r\n1️⃣   \r\n2️⃣  \r\n3️⃣  \r\n .  \r\n .\r\n .\r\n```\r\n<br>\r\n<br>\r\n# 👉 다음편에는 flex-Item 속성에 대해서!\r\n##### ✨자료참고✨\r\n[참고1 --- HEROPY Tech](https://heropy.blog/2018/11/24/css-flexible-box/ ).\r\n[참고2 --- 1분코딩 ](https://studiomeal.com/archives/197 ).',2,2,1,'2021-01-18 01:32:49','2021-01-27 23:43:46',0,0),(11,'💚JEYA-BLOG 탄생로그 -- 4','# JEYA-BLOG 탄생로그💚\r\n> 페이지 박스 만들기\r\n```youtube\r\nNcCvi5okN6s\r\n```\r\n\r\n게시판 아래에 나오는 페이지 박스를 만들었다.  \r\n해당 페이지에 맞게 박스 표현이 달라지게 해야 하는데 \r\n구현 조건을 계산하는게 생각보다 까다로웠다.\r\n코딩을 배우기 전에는 별 생각없이 사용했던 기능들이\r\n여러 계산들 끝에 만들어지는거란 걸 느끼고 있다.\r\n',0,3,1,'2021-01-18 01:45:16','2021-01-27 23:43:46',0,0),(12,'💻JSP 커뮤니티 개발로그 -- 1','# JSP 커뮤니티 개발일지1💻\r\n```youtube\r\nLpAeJf6Uvbs\r\n```\r\n\r\n# 진행상황\r\n\r\n- [X] 메인화면 폼 만들기\r\n<br>\r\n- [X] 회원가입 폼 \r\n- [X] 회원가입 시 폼 체크(빈칸X / 필수입력) \r\n- [X] 회원가입 시 아이디 중복체크 \r\n- [X] 비밀번호 재확인 \r\n- [X] 가입정보 전송 \r\n <br>\r\n- [X] 로그인 \r\n- [X] 로그인 후 [로그아웃] 기능 나타내기 (회원가입 기능 숨기기) \r\n- [X] 로그아웃 후 [회원가입/로그인] 나타내기 \r\n<br>\r\n- [X] 글쓰기 [로그인 해야 가능하도록] \r\n- [X] 글삭제 [해당 글 작성자만 가능하도록] \r\n- [X] 글수정 [해당 글 작성자만 가능하도록] \r\n',7,3,1,'2021-01-21 01:19:36','2021-01-27 23:43:47',0,0),(13,'💻JSP 커뮤니티 개발로그 -- 2','# JSP 커뮤니티 개발일지1💻\r\n```youtube\r\nz26froXUS_g\r\n```\r\n\r\n# 진행한 내용\r\n- [X] ajax통신을 이용한 아이디 중복체크 기능\r\n- [X] 로그인, 로그아웃 권한체크 (글쓰기 -- > 로그인 후 이용해 주세요)\r\n- [X] 메일발송기능 (테스트)\r\n\r\n--------------------------------------------\r\n# 완료\r\n\r\n- 메인화면 폼 만들기\r\n<br>\r\n- 회원가입 폼 \r\n- 회원가입 시 폼 체크(빈칸X / 필수입력) \r\n- 회원가입 시 아이디 중복체크 \r\n- 비밀번호 재확인 \r\n- 가입정보 전송 \r\n <br>\r\n- 로그인 \r\n- 로그인 후 [로그아웃] 기능 나타내기 (회원가입 기능 숨기기) \r\n- 로그아웃 후 [회원가입/로그인] 나타내기 \r\n<br>\r\n- 글쓰기 [로그인 해야 가능하도록] \r\n- 글삭제 [해당 글 작성자만 가능하도록] \r\n- 글수정 [해당 글 작성자만 가능하도록] \r\n\r\n',1,3,1,'2021-01-25 22:08:51','2021-01-27 23:43:47',0,0),(14,'💻JSP 커뮤니티 개발로그 -- 3','# JSP 커뮤니티 개발일지1💻\r\n```youtube\r\nFPUBw-0N-V8\r\n```\r\n\r\n# 진행한 내용\r\n- [X] 비밀번호 암호화\r\n- [X] 아이디찾기\r\n- [X] 비밀번호찾기\r\n- [X] 비밀번호 찾기 --- 메일발송\r\n- [X] 비밀번호 찾기 --- 임시패스워드로 재로그인\r\n- [ ] 비밀번호 찾기 --- 메일 속에 로그인링크 첨부 (링크재확인 필요)\r\n--------------------------------------------\r\n# 완료\r\n\r\n- 메인화면 폼 만들기\r\n<br>\r\n- 회원가입 폼 \r\n- 회원가입 시 폼 체크(빈칸X / 필수입력) \r\n- 회원가입 시 아이디 중복체크 \r\n- 비밀번호 재확인 \r\n- 가입정보 전송 \r\n <br>\r\n- 로그인 \r\n- 로그인 후 [로그아웃] 기능 나타내기 (회원가입 기능 숨기기) \r\n- 로그아웃 후 [회원가입/로그인] 나타내기 \r\n<br>\r\n- 글쓰기 [로그인 해야 가능하도록] \r\n- 글삭제 [해당 글 작성자만 가능하도록] \r\n- 글수정 [해당 글 작성자만 가능하도록] \r\n<br>\r\n- ajax통신을 이용한 아이디 중복체크 기능\r\n- 로그인, 로그아웃 권한체크 (글쓰기 -- > 로그인 후 이용해 주세요)\r\n- 메일발송기능 (테스트)\r\n<br>\r\n- 글쓰기 [로그인 해야 가능하도록] \r\n- 글삭제 [해당 글 작성자만 가능하도록] \r\n- 글수정 [해당 글 작성자만 가능하도록] \r\n',0,3,1,'2021-01-27 22:26:10','2021-01-27 23:43:47',0,0),(15,'💻JSP 커뮤니티 개발로그 -- 4','# JSP 커뮤니티 개발일지1💻\r\n```youtube\r\nmpaeiLa-h4g\r\n```\r\n\r\n# 진행한 내용\r\n- [X] 게시물 개수 표시\r\n- [X] 게시물 검색\r\n- [X] 리스트 하단에 페이지 박스 만들기 \r\n--------------------------------------------\r\n# 완료\r\n\r\n- 메인화면 폼 만들기\r\n<br>\r\n- 회원가입 폼 \r\n- 회원가입 시 폼 체크(빈칸X / 필수입력) \r\n- 회원가입 시 아이디 중복체크 \r\n- 비밀번호 재확인 \r\n- 가입정보 전송 \r\n <br>\r\n- 로그인 \r\n- 로그인 후 [로그아웃] 기능 나타내기 (회원가입 기능 숨기기) \r\n- 로그아웃 후 [회원가입/로그인] 나타내기 \r\n<br>\r\n- 글쓰기 [로그인 해야 가능하도록] \r\n- 글삭제 [해당 글 작성자만 가능하도록] \r\n- 글수정 [해당 글 작성자만 가능하도록] \r\n<br>\r\n- ajax통신을 이용한 아이디 중복체크 기능\r\n- 로그인, 로그아웃 권한체크 (글쓰기 -- > 로그인 후 이용해 주세요)\r\n- 메일발송기능 (테스트)\r\n<br>\r\n- 비밀번호 암호화\r\n- 아이디찾기\r\n- 비밀번호찾기\r\n- 비밀번호 찾기 --- 메일발송\r\n- 비밀번호 찾기 --- 임시패스워드로 재로그인\r\n- 비밀번호 찾기 --- 메일 속에 로그인링크 첨부\r\n\r\n',0,3,1,'2021-01-27 22:28:09','2021-01-27 23:43:47',0,0),(16,'💚JEYA-BLOG 탄생로그 -- 5','# JEYA-BLOG 탄생로그💚\r\n> 디스커스API로 댓글 기능 만들기1 -- 코드 삽입하기\r\n```youtube\r\n7tfJz64yrqY\r\n```\r\n\r\n\r\n',0,3,1,'2021-01-27 22:35:20','2021-01-27 23:43:48',0,0),(17,'CSS flex_Items 속성 1탄!','# 🌈 CSS display:flex 공부하기 -  Items 속성 1탄\r\n### ✅ order : 아이템들의 나열순서 \r\n### ✅ flex : flex-grow/shrink/basis 를 한번에 쓰는 축약형\r\n### ✅ flex-grow : 기본크기보다 커질 수 있는 결정  \r\n### ✅ flex-shrink :  기본크기보다 작아질 수 있는 결정 \r\n### ✅ flex-basis : flex아이템의 기본 크기 설정\r\n### ✅ ailgn-self : 해당 아이템의 수직축 방향 정렬 \r\n<br>\r\n<br>\r\n# 📐order\r\n## 아이템에 숫자를 지정해 순서를 정합니다. \r\n#### 작은 숫자일 수록 먼저 배치됩니다. \r\n#### 👉 #1 {order : 3}\r\n#### 👉 #2 {order : 1}\r\n#### 👉 #3 {order : 2}\r\n<br>\r\n```\r\n2️⃣ 3️⃣ 1️⃣ \r\n```\r\n<br>\r\n# 📐flex\r\n## flex-grow/shrink/basis 를 한번에 쓰는 축약형입니다\r\n#### 아이템의 너비(증가/감소/기본)을 설정합니다  \r\n#### 👉 flex : 1; \r\n```\r\nflex-grow : 1; flex-shrink: 1; flex-basis: 0%; \r\n\r\n---> flex-basis의 기본값은 auto이지만, 값을 생략하면 0으로 적용됩니다! \r\n```\r\n<br>\r\n#### 👉 flex: 1 1 auto; \r\n```\r\nflex-grow : 1; flex-shrink: 1; flex-basis: auto; \r\n```\r\n#### 👉  flex: 1 500px; \r\n<br>\r\n```\r\nflex-grow : 1; flex-shrink: 1; flex-basis: 500px; \r\n```\r\n<br>\r\n<br>\r\n## `flex-grow`\r\n#### 아이템의 증가 너비 비율을 설정합니다.\r\n##### 숫자가 클 수록 너비가 커지고, 값이 0일 경우는 효과가 없습니다.\r\n<br>\r\n#### 👉 아이템 3개의 너비가 2,1,1 이라면\r\n<br>\r\n```\r\n1️⃣1️⃣ 2️⃣ 3️⃣\r\n\r\n아이템 1 : 너비의 50%\r\n아이템 2 : 너비의 25%\r\n아이템 3 : 너비의 25%\r\n```\r\n<br>\r\n<br>\r\n\r\n## `flex-shrink`\r\n#### 아이템의 감소 너비 비율을 설정합니다.\r\n##### 👉 0보다 큰 값이 셋팅 되면 해당 아이템이 유연하게 변하면서 기본크기(basis)보다 작아집니다 \r\n##### 👉 0으로 셋팅하면 기본크기 밑으로 작아지지 않기 때문에 고정크기의 컬럼을 쉽게 만들 수 있어요! \r\n<br>\r\n```\r\n.item{\r\n    flex-shrink : 0; \r\n    width : 100px;  -----> 고정크기는 width로 설정! \r\n}\r\n```\r\n\r\n<br>\r\n<br>\r\n## `flex-basis`\r\n#### 아이템의 기본크기를 설정합니다. (기본적으로 차지하는 크기)   \r\n##### 👉 row일때는 너비, cloumn일때는 높이!  \r\n##### 👉 width와 함께 사용하면 설정한 크기로 보여지지만, 기본크기는 basis로 설정되어있습니다!  \r\n<br>\r\n<br>\r\n<br>\r\n\r\n\r\n# 👉 다음편에는 flex-Item 속성_align-self 에 대해서! \r\n\r\n##### ✨자료참고✨\r\n[참고1 --- HEROPY Tech](https://heropy.blog/2018/11/24/css-flexible-box/ ).\r\n[참고2 --- 1분코딩 ](https://studiomeal.com/archives/197 ).\r\n\r\n',0,2,1,'2021-01-27 23:22:35','2021-01-27 23:43:48',0,0);
/*!40000 ALTER TABLE `article` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `board`
--

DROP TABLE IF EXISTS `board`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `board` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(30) NOT NULL,
  `regDate` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `board`
--

LOCK TABLES `board` WRITE;
/*!40000 ALTER TABLE `board` DISABLE KEYS */;
INSERT INTO `board` VALUES (1,'Notice','2020-12-20 03:22:51'),(2,'IT','2020-12-20 03:22:51'),(3,'StudyLog','2020-12-29 00:48:31');
/*!40000 ALTER TABLE `board` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ga4DataPageCount`
--

DROP TABLE IF EXISTS `ga4DataPageCount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ga4DataPageCount` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `regDate` datetime NOT NULL,
  `updateDate` datetime NOT NULL,
  `pagePath` char(100) NOT NULL,
  `count` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1839 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ga4DataPageCount`
--

LOCK TABLES `ga4DataPageCount` WRITE;
/*!40000 ALTER TABLE `ga4DataPageCount` DISABLE KEYS */;
INSERT INTO `ga4DataPageCount` VALUES (98,'2021-01-07 05:16:17','2021-01-07 05:16:17','/Notice-article-1.html',14),(119,'2021-01-08 01:08:31','2021-01-08 01:08:31','/IT-article-2.html',1),(120,'2021-01-08 01:08:31','2021-01-08 01:08:31','/IT-article-3.html',1),(1807,'2021-01-27 23:43:43','2021-01-27 23:43:43','/searchPost.html',295),(1808,'2021-01-27 23:43:43','2021-01-27 23:43:43','/',270),(1809,'2021-01-27 23:43:43','2021-01-27 23:43:43','/index.html',224),(1810,'2021-01-27 23:43:43','2021-01-27 23:43:43','/stats.html',104),(1811,'2021-01-27 23:43:43','2021-01-27 23:43:43','/IT-1.html',80),(1812,'2021-01-27 23:43:43','2021-01-27 23:43:43','/StudyLog-1.html',60),(1813,'2021-01-27 23:43:43','2021-01-27 23:43:43','/about.html',43),(1814,'2021-01-27 23:43:43','2021-01-27 23:43:43','/Notice-1.html',41),(1815,'2021-01-27 23:43:43','2021-01-27 23:43:43','/social.html',36),(1816,'2021-01-27 23:43:43','2021-01-27 23:43:43','/article-8.html',9),(1817,'2021-01-27 23:43:43','2021-01-27 23:43:43','/?dummy=13452435',8),(1818,'2021-01-27 23:43:43','2021-01-27 23:43:43','/article-4.html',8),(1819,'2021-01-27 23:43:43','2021-01-27 23:43:43','/article-9.html',8),(1820,'2021-01-27 23:43:43','2021-01-27 23:43:43','/article-1.html',7),(1821,'2021-01-27 23:43:43','2021-01-27 23:43:43','/article-12.html',7),(1822,'2021-01-27 23:43:43','2021-01-27 23:43:43','/article-6.html',7),(1823,'2021-01-27 23:43:43','2021-01-27 23:43:43','/article-7.html',6),(1824,'2021-01-27 23:43:43','2021-01-27 23:43:43','/searchPost.html?dummy=54353543543',6),(1825,'2021-01-27 23:43:43','2021-01-27 23:43:43','/article-5.html',5),(1826,'2021-01-27 23:43:43','2021-01-27 23:43:43','/searchPost.html?dummy=543543543543',4),(1827,'2021-01-27 23:43:43','2021-01-27 23:43:43','/StudyLog-1.html?dummy=5435435',2),(1828,'2021-01-27 23:43:43','2021-01-27 23:43:43','/article-10.html',2),(1829,'2021-01-27 23:43:43','2021-01-27 23:43:43','/article-3.html',2),(1830,'2021-01-27 23:43:43','2021-01-27 23:43:43','/index.html?dummy=3543543541',2),(1831,'2021-01-27 23:43:43','2021-01-27 23:43:43','/IT-1.html?dummy=5454354',1),(1832,'2021-01-27 23:43:43','2021-01-27 23:43:43','/article-13.html',1),(1833,'2021-01-27 23:43:43','2021-01-27 23:43:43','/article-2.html',1),(1834,'2021-01-27 23:43:43','2021-01-27 23:43:43','/index.html?dummy=5354354353532132135435435413',1),(1835,'2021-01-27 23:43:43','2021-01-27 23:43:43','/searchPost.html?dummy=5435435434354',1),(1836,'2021-01-27 23:43:43','2021-01-27 23:43:43','/searchPost.html?dummy=55435435435',1),(1837,'2021-01-27 23:43:43','2021-01-27 23:43:43','/ssg-fake/',1),(1838,'2021-01-27 23:43:43','2021-01-27 23:43:43','/stats.html?dummy=354154351354',1);
/*!40000 ALTER TABLE `ga4DataPageCount` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ga4DataPageCounts`
--

DROP TABLE IF EXISTS `ga4DataPageCounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ga4DataPageCounts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `regDate` datetime NOT NULL,
  `updateDate` datetime NOT NULL,
  `pagePath` char(100) NOT NULL,
  `count` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ga4DataPageCounts`
--

LOCK TABLES `ga4DataPageCounts` WRITE;
/*!40000 ALTER TABLE `ga4DataPageCounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `ga4DataPageCounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member`
--

DROP TABLE IF EXISTS `member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `member` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `loginId` char(30) NOT NULL,
  `loginPw` varchar(50) NOT NULL,
  `name` char(30) NOT NULL,
  `regDate` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member`
--

LOCK TABLES `member` WRITE;
/*!40000 ALTER TABLE `member` DISABLE KEYS */;
INSERT INTO `member` VALUES (1,'admin','admin','제야','2020-12-20 03:22:51');
/*!40000 ALTER TABLE `member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tag`
--

DROP TABLE IF EXISTS `tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tag` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `relTypeCode` char(20) NOT NULL,
  `relId` int(10) unsigned NOT NULL,
  `body` char(20) NOT NULL,
  `regDate` datetime NOT NULL,
  `updateDate` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `relTypeCode` (`relTypeCode`,`relId`,`body`),
  UNIQUE KEY `relTypeCode_3` (`relTypeCode`,`relId`,`body`),
  UNIQUE KEY `relTypeCode_5` (`relTypeCode`,`relId`,`body`),
  KEY `relTypeCode_2` (`relTypeCode`,`relId`),
  KEY `relTypeCode_4` (`relTypeCode`,`relId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tag`
--

LOCK TABLES `tag` WRITE;
/*!40000 ALTER TABLE `tag` DISABLE KEYS */;
/*!40000 ALTER TABLE `tag` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-01-27 23:47:08
