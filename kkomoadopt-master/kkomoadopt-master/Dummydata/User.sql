-- --------------------------------------------------------
-- 호스트:                          127.0.0.1
-- 서버 버전:                        11.5.2-MariaDB - mariadb.org binary distribution
-- 서버 OS:                        Win64
-- HeidiSQL 버전:                  12.6.0.6765
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

CREATE TABLE `user` (
	`user_id` VARCHAR(36) NOT NULL COLLATE 'utf8mb3_general_ci',
	`authority` ENUM('ADMIN','USER') NOT NULL COLLATE 'utf8mb3_general_ci',
	`blacklists` TEXT NULL DEFAULT NULL COLLATE 'utf8mb3_general_ci',
	`email` VARCHAR(255) NULL DEFAULT NULL COLLATE 'utf8mb3_general_ci',
	`is_blacklisted` BIT(1) NOT NULL,
	`name` VARCHAR(255) NULL DEFAULT NULL COLLATE 'utf8mb3_general_ci',
	`nickname` VARCHAR(20) NULL DEFAULT NULL COLLATE 'utf8mb3_general_ci',
	`password` VARCHAR(16) NOT NULL COLLATE 'utf8mb3_general_ci',
	`phone_number` VARCHAR(255) NULL DEFAULT NULL COLLATE 'utf8mb3_general_ci',
	`profile_text` TEXT NULL DEFAULT NULL COLLATE 'utf8mb3_general_ci',
	`provider` ENUM('KAKAO','NAVER','NORMAL') NULL DEFAULT NULL COLLATE 'utf8mb3_general_ci',
	`scraps` LONGTEXT NULL DEFAULT NULL COLLATE 'utf8mb3_general_ci',
	`social_id` VARCHAR(50) NULL DEFAULT NULL COLLATE 'utf8mb3_general_ci',
	`user_create` DATETIME(6) NOT NULL,
	`user_img_url` VARCHAR(255) NULL DEFAULT NULL COLLATE 'utf8mb3_general_ci',
	`user_last_login` DATETIME(6) NOT NULL,
	PRIMARY KEY (`user_id`) USING BTREE,
	INDEX `idx_user_nickname` (`nickname`) USING BTREE
)
COLLATE='utf8mb3_general_ci'
ENGINE=InnoDB
;


-- 테이블 데이터 kkomoadopt.user:~50 rows (대략적) 내보내기
INSERT IGNORE INTO `user` (`user_id`, `authority`, `blacklists`, `email`, `is_blacklisted`, `name`, `nickname`, `password`, `phone_number`, `profile_text`, `provider`, `scraps`, `social_id`, `user_create`, `user_img_url`, `user_last_login`) VALUES
	('04ae200b-cc98-4563-8992-ef4474fe61f1', 'USER', '[{"blackedDate":[2024,11,10,9,30],"blackReason":"Abusive behavior"}]', 'john.doe982@gmail.com', b'1', '김진우', 'john982', 'john9823', '010-2359-6821', '김진우입니다. 기술과 창의적인 문제 해결을 좋아하며, 다양한 분야에 관심을 가지고 있습니다.', 'NORMAL', '["2024-58712","2024-36784"]', 'NULL', '2024-08-15 10:15:00.000000', '5123e3f8-12c3-42d3-9fad-5cbc808e0793.jpg', '2024-11-20 08:45:00.000000'),
	('06a99a75-7bed-4943-9b7b-9ef9a1377bf3', 'USER', '[]', 'sophia.moon876@gmail.com', b'0', '이채은', 'sophia876', 'sophia8765', '010-6789-0123', '이채은입니다. 다양한 분야에 관심이 많고, 특히 인간관계와 협력에서 많은 배움을 얻고 있습니다.', 'NORMAL', '["2024-36784","2024-93204"]', 'NULL', '2024-09-28 12:50:00.000000', '5123e3f8-12c3-42d3-9fad-5cbc808e0793.jpg', '2024-12-02 18:00:00.000000'),
	('08ff8005-3bae-453c-b2f9-d6fa24b57901', 'USER', '[]', 'janedoe1234@gmail.com', b'0', '이수진', 'sujin94', 'password4567', '010-3456-7890', '안녕하세요, 이수진입니다. 세상에 긍정적인 영향을 미치고 싶습니다. 항상 배우고 성장하려는 자세를 유지하려고 합니다.', 'NORMAL', '["2024-50628"]', 'NULL', '2024-11-25 10:00:00.000000', '5123e3f8-12c3-42d3-9fad-5cbc808e0793.jpg', '2024-12-02 17:10:00.000000'),
	('0e3c7182-48fa-4d66-9f81-b5570b75424b', 'USER', '[]', 'henry.kim842@gmail.com', b'0', '강지원', 'henry842', 'henry8421', '010-8425-6953', '강지원입니다. 시스템 개발에 많은 관심을 가지고 있으며, 문제 해결을 위한 최적의 솔루션을 제시하는 것을 좋아합니다.', 'NORMAL', '["2024-45976","2024-58492"]', 'NULL', '2024-10-13 14:00:00.000000', '5123e3f8-12c3-42d3-9fad-5cbc808e0793.jpg', '2024-12-02 17:10:00.000000'),
	('15697d14-7a19-46a4-accb-7c494599ea00', 'USER', '[]', 'emily.choi730@gmail.com', b'0', '이세연', 'emily730', 'emily7301', '010-3721-5849', '이세연입니다. 창의적 문제 해결을 위해 다양한 관점을 탐구하며, 협업을 즐깁니다.', 'NORMAL', '["2024-92048","2024-14523"]', 'NULL', '2024-09-07 14:10:00.000000', '5123e3f8-12c3-42d3-9fad-5cbc808e0793.jpg', '2024-12-02 10:40:00.000000'),
	('17df9a6d-50ac-4978-8515-de4c2669b83a', 'USER', '[]', 'lily.kim301@gmail.com', b'0', '정수빈', 'lily301', 'lily3017', '010-6548-9075', '정수빈입니다. 디자인과 UI/UX에 대한 열정이 있으며, 창의적이고 혁신적인 디자인을 추구합니다.', 'NORMAL', '["2024-93204","2024-53284"]', 'NULL', '2024-09-29 10:15:00.000000', '5123e3f8-12c3-42d3-9fad-5cbc808e0793.jpg', '2024-12-01 13:45:00.000000'),
	('1a8c7c68-0fe6-4f80-a1f7-db71a9470731', 'USER', '[]', 'emily.lee999@gmail.com', b'0', '황지민', 'emily999', 'emily9998', '010-2468-1357', '황지민입니다. 디자인과 기술의 융합에 관심이 있으며, 창의적인 문제 해결을 추구합니다.', 'NORMAL', '["2024-74103","2024-53284"]', 'NULL', '2024-09-30 16:20:00.000000', '5123e3f8-12c3-42d3-9fad-5cbc808e0793.jpg', '2024-12-03 13:35:00.000000'),
	('1e35d35e-4f05-45b5-865e-c3bdb823d07b', 'USER', '[]', 'jake.lee502@gmail.com', b'0', '이재호', 'jake502', 'jake5023', '010-2956-4832', '이재호입니다. 기술적 문제 해결에 대한 도전을 즐기며, 항상 새로운 기술을 배우고 있습니다.', 'NORMAL', '["2024-91268","2024-98742"]', 'NULL', '2024-11-01 12:00:00.000000', '5123e3f8-12c3-42d3-9fad-5cbc808e0793.jpg', '2024-12-02 16:30:00.000000'),
	('348d99fe-8c08-436a-8597-31c64598a2f0', 'USER', '[]', 'lucas.smith876@gmail.com', b'0', '김준호', 'lucas876', 'lucas8765', '010-3456-7890', '김준호입니다. 다양한 기술을 익히며, 더 나은 문제 해결 방법을 찾는 데 중점을 둡니다. 새로운 것을 배우는 것을 좋아합니다.', 'NORMAL', '["2024-14958","2024-39461"]', 'NULL', '2024-09-25 11:00:00.000000', '5123e3f8-12c3-42d3-9fad-5cbc808e0793.jpg', '2024-12-02 14:00:00.000000'),
	('365e8eed-7ccc-4541-be88-55acb3390521', 'USER', '[]', 'kylie.johnson567@gmail.com', b'0', '김다영', 'kylie567', 'kylie5678', '010-9876-5432', '김다영입니다. 다양한 분야에서 도전하는 것을 좋아하고, 새로운 기술을 배우는 것에 열정을 가지고 있습니다.', 'NORMAL', '["2024-36784","2024-31245"]', 'NULL', '2024-11-10 13:25:00.000000', '5123e3f8-12c3-42d3-9fad-5cbc808e0793.jpg', '2024-12-02 11:10:00.000000'),
	('368de3a0-e332-4cbd-ac9f-eb8f39c7a97e', 'USER', '[]', 'steve.smith1980@gmail.com', b'0', '조준호', 'steve1980', 'steve1980pass', '010-5678-9012', '조준호입니다. 저는 창의적인 아이디어를 제시하는 것을 좋아합니다. 항상 새로운 것을 배우고 있습니다.', 'NORMAL', '["2024-28465","2024-67481"]', 'NULL', '2024-10-10 07:15:00.000000', '5123e3f8-12c3-42d3-9fad-5cbc808e0793.jpg', '2024-12-01 13:40:00.000000'),
	('440db46c-3132-4c3a-90fa-a79975b26f3d', 'USER', '[]', 'lisa.choi760@gmail.com', b'0', '최지영', 'lisa760', 'lisa7601', '010-3762-8407', '최지영입니다. 디자인과 창의적 사고에 대한 열정을 가지고 있으며, 소프트웨어 개발에도 흥미가 많습니다.', 'NORMAL', '["2024-45193","2024-98372"]', 'NULL', '2024-09-03 11:45:00.000000', '5123e3f8-12c3-42d3-9fad-5cbc808e0793.jpg', '2024-12-02 17:00:00.000000'),
	('445cefdf-599e-4c98-8825-91da6bc2cc46', 'USER', '[]', 'olivia.jung543@gmail.com', b'0', '정현주', 'olivia543', 'olivia5432', '010-8361-5278', '정현주입니다. 신기술과 혁신적인 아이디어에 관심이 많으며, 문제 해결을 위한 창의적 접근을 즐깁니다.', 'NORMAL', '["2024-13946","2024-73120"]', 'NULL', '2024-10-19 10:20:00.000000', '5123e3f8-12c3-42d3-9fad-5cbc808e0793.jpg', '2024-12-02 08:15:00.000000'),
	('4651812a-ecf6-4422-b6a4-775620724175', 'USER', '[]', 'julia.kim567@gmail.com', b'0', '박주현', 'julia567', 'julia5678', '010-1234-5678', '박주현입니다. 새로운 기술과 도전을 사랑하며, 항상 배움에 열정적입니다. 긍정적인 마인드를 가지고 있습니다.', 'NORMAL', '["2024-83256","2024-64839"]', 'NULL', '2024-11-16 08:40:00.000000', '5123e3f8-12c3-42d3-9fad-5cbc808e0793.jpg', '2024-12-03 11:30:00.000000'),
	('471432b6-ff68-4f1d-a987-45b0c99ee32e', 'USER', '[]', 'alex.smith539@gmail.com', b'0', '김선희', 'alex539', 'alex5398', '010-2468-1357', '김선희입니다. 다양한 기술에 대한 깊은 관심을 가지고 있으며, 문제 해결을 위한 최적의 방법을 찾고 있습니다.', 'NORMAL', '["2024-92084","2024-91563"]', 'NULL', '2024-10-01 13:00:00.000000', '5123e3f8-12c3-42d3-9fad-5cbc808e0793.jpg', '2024-12-01 15:40:00.000000'),
	('4b319be7-a20d-464f-9ad0-6bc5d401d48c', 'USER', '[]', 'lucas.park987@gmail.com', b'0', '김재훈', 'lucas987', 'lucas9876', '010-3598-2468', '김재훈입니다. 기술과 혁신적인 솔루션을 좋아하며, 새로운 도전에 열정을 가지고 있습니다.', 'NORMAL', '["2024-61802","2024-33215"]', 'NULL', '2024-11-11 09:30:00.000000', '5123e3f8-12c3-42d3-9fad-5cbc808e0793.jpg', '2024-12-03 11:20:00.000000'),
	('506bedb9-fa45-4700-8372-bee147a12ec2', 'USER', '[]', 'jackson.brown123@gmail.com', b'0', '홍길동', 'jackson123', 'jackson1234', '010-1234-5678', '홍길동입니다. 언제나 긍정적이고 열정적인 삶을 살고 싶습니다. 사람들과 소통하고 협력하는 것을 즐깁니다.', 'NORMAL', '["2024-53284","2024-56742"]', 'NULL', '2024-11-18 10:25:00.000000', '5123e3f8-12c3-42d3-9fad-5cbc808e0793.jpg', '2024-12-01 12:05:00.000000'),
	('54a8cbc2-b17e-419a-b22f-8cf7bb795c29', 'USER', '[]', 'susan.white456@gmail.com', b'0', '한정우', 'susie456', 'susie4567', '010-5678-9012', '한정우입니다. 새로운 아이디어를 창출하고, 기술적인 문제를 해결하는 것을 좋아합니다. 도전적인 프로젝트에 참여하는 것을 즐깁니다.', 'NORMAL', '["2024-27934","2024-83201"]', 'NULL', '2024-10-12 14:15:00.000000', '5123e3f8-12c3-42d3-9fad-5cbc808e0793.jpg', '2024-12-02 17:00:00.000000'),
	('5637f70b-a2da-4281-80af-4c65341f38a3', 'USER', '[{"blackedDate":[2024,11,10,9,30],"blackReason":"Abusive behavior"}]', 'sarah.kim273@gmail.com', b'1', '김수영', 'sarah273', 'sarah2730', '010-6742-5189', '김수영입니다. 사람들과의 소통을 좋아하며, 다양한 취미와 활동을 즐깁니다.', 'NORMAL', '["2024-53284","2024-98431"]', 'NULL', '2024-09-22 11:30:00.000000', '5123e3f8-12c3-42d3-9fad-5cbc808e0793.jpg', '2024-11-18 13:40:00.000000'),
	('57789093-b022-4859-bbea-b91aa55ab5df', 'USER', '[]', 'noah.kang673@gmail.com', b'0', '강윤희', 'noah673', 'noah6735', '010-3749-7625', '강윤희입니다. 웹 애플리케이션 개발과 보안 분야에 깊은 관심을 가지고 있습니다.', 'NORMAL', '["2024-74529","2024-93204"]', 'NULL', '2024-08-12 11:50:00.000000', '5123e3f8-12c3-42d3-9fad-5cbc808e0793.jpg', '2024-12-03 14:00:00.000000'),
	('5adbccb7-1587-4650-b6b9-776fb0b09ed8', 'USER', '[]', 'michael.lee334@gmail.com', b'0', '이건우', 'michael334', 'michael3345', '010-7654-3210', '이건우입니다. 컴퓨터 공학을 전공하며, 새로운 기술을 배우는 것에 열정적입니다.', 'NORMAL', '["2024-33215","2024-82346"]', 'NULL', '2024-11-12 11:30:00.000000', '5123e3f8-12c3-42d3-9fad-5cbc808e0793.jpg', '2024-12-03 08:45:00.000000'),
	('5bd48115-9536-4151-865c-057d073b2dc2', 'USER', '[]', 'emily.johnson321@gmail.com', b'0', '정예린', 'emily321', 'emily3214', '010-3456-7890', '정예린입니다. 책과 영화, 음악을 사랑하며 다양한 사람들과 소통하는 것을 좋아합니다.', 'NORMAL', '["2024-45912","2024-76139"]', 'NULL', '2024-10-25 09:45:00.000000', '5123e3f8-12c3-42d3-9fad-5cbc808e0793.jpg', '2024-12-03 10:20:00.000000'),
	('64fb3d86-2207-4768-a4d5-da7df314a447', 'USER', '[]', 'jason.lee547@gmail.com', b'0', '박지민', 'jason547', 'jason5473', '010-4725-6389', '박지민입니다. 웹 개발에 관심이 많고, 다양한 프로젝트에서 협업하며 기술을 배우고 있습니다.', 'NORMAL', '["2024-59874","2024-75196"]', 'NULL', '2024-11-18 08:45:00.000000', '5123e3f8-12c3-42d3-9fad-5cbc808e0793.jpg', '2024-12-03 12:20:00.000000'),
	('66d45bc1-02cb-4dfd-8a30-f830f5174c88', 'USER', '[]', 'chris.kim678@gmail.com', b'0', '김승우', 'chris678', 'chris6780', '010-4823-1587', '김승우입니다. 클라우드 컴퓨팅과 사이버 보안에 대한 깊은 관심을 가지고 있으며, 최신 기술을 배우는 것을 즐깁니다.', 'NORMAL', '["2024-13792","2024-90451"]', 'NULL', '2024-10-12 13:20:00.000000', '5123e3f8-12c3-42d3-9fad-5cbc808e0793.jpg', '2024-12-03 15:10:00.000000'),
	('67e2314d-528d-46ba-bcb8-fb9401c92793', 'USER', '[]', 'lily.green789@gmail.com', b'0', '김태희', 'lily789', 'lily78901', '010-6789-0123', '김태희입니다. 저에게는 창의력과 문제 해결 능력이 중요한 가치입니다. 언제나 최선을 다해 새로운 것을 배우고 성장하는 데 집중합니다.', 'NORMAL', '["2024-73912","2024-82935"]', 'NULL', '2024-11-03 11:30:00.000000', '5123e3f8-12c3-42d3-9fad-5cbc808e0793.jpg', '2024-12-03 14:50:00.000000'),
	('6a9b3ba0-acf9-4a77-84b4-60a0abbc8e8e', 'USER', '[{"blackedDate":[2024,11,10,9,30],"blackReason":"Abusive behavior"}]', 'alex.park871@gmail.com', b'1', '박철수', 'alex871', 'alex8712', '010-3857-2391', '박철수입니다. AI와 머신러닝을 전공하고 있으며, 기술 발전에 대한 깊은 관심을 가지고 있습니다.', 'NORMAL', '["2024-68490","2024-83126"]', 'NULL', '2024-08-22 13:45:00.000000', '5123e3f8-12c3-42d3-9fad-5cbc808e0793.jpg', '2024-11-15 15:25:00.000000'),
	('70f1b497-e902-44c1-b569-08bf29c0aad6', 'USER', '[{"blackedDate":[2024,11,10,9,30],"blackReason":"Abusive behavior"}]', 'emily.lee125@gmail.com', b'1', '이유정', 'emily125', 'emily1251', '010-5817-9342', '이유정입니다. 여행과 탐험을 좋아하며, 항상 새로운 경험을 추구합니다.', 'NORMAL', '["2024-84782","2024-38165"]', 'NULL', '2024-10-10 12:05:00.000000', '5123e3f8-12c3-42d3-9fad-5cbc808e0793.jpg', '2024-11-21 14:30:00.000000'),
	('7a92ae42-876c-4297-9b5c-95c6e7de2eda', 'USER', '[]', 'michael.james987@gmail.com', b'0', '김민준', 'mike987', 'mike98765', '010-2345-6789', '안녕하세요, 김민준입니다. 기술과 창의성에 관심이 많으며, 새로운 도전과 배움을 즐깁니다.', 'NORMAL', '["2024-83256","2024-67481"]', 'NULL', '2024-11-05 13:00:00.000000', '5123e3f8-12c3-42d3-9fad-5cbc808e0793.jpg', '2024-12-02 15:30:00.000000'),
	('7da7183d-1726-458a-a620-93590251ca85', 'USER', '[]', 'alex.kim567@gmail.com', b'0', '김하늘', 'alex567', 'alex5678', '010-2345-6789', '김하늘입니다. 저는 독서를 좋아하고, 새로운 것에 도전하는 것을 즐깁니다. 기술과 혁신에 관심이 많습니다.', 'NORMAL', '["2024-82456","2024-47895"]', 'NULL', '2024-10-20 14:10:00.000000', '5123e3f8-12c3-42d3-9fad-5cbc808e0793.jpg', '2024-12-01 16:25:00.000000'),
	('7ed679d4-def7-44a3-a58e-6c607a5e314c', 'USER', '[]', 'ella.park580@gmail.com', b'0', '박민영', 'ella580', 'ella5802', '010-9032-1168', '박민영입니다. IT 분야에서 다양한 프로젝트를 경험하며, 최신 기술을 지속적으로 배우고 있습니다.', 'NORMAL', '["2024-39016","2024-83125"]', 'NULL', '2024-07-15 10:00:00.000000', '5123e3f8-12c3-42d3-9fad-5cbc808e0793.jpg', '2024-12-01 14:40:00.000000'),
	('85b95a95-fe4f-4465-98c7-d7ed00653668', 'USER', '[]', 'sophia.choi312@gmail.com', b'0', '최수현', 'sophia312', 'sophia3120', '010-8472-9301', '최수현입니다. 데이터 분석에 관심이 많으며, 항상 새로운 트렌드와 기술을 탐구하고 있습니다.', 'NORMAL', '["2024-73120","2024-92048"]', 'NULL', '2024-10-24 08:30:00.000000', '5123e3f8-12c3-42d3-9fad-5cbc808e0793.jpg', '2024-12-02 13:10:00.000000'),
	('8e968eff-bb85-4cf0-a2c1-cb11bd0733fd', 'USER', '[]', 'lucas.park124@gmail.com', b'0', '이태훈', 'lucas124', 'lucas1245', '010-1357-2468', '이태훈입니다. IT와 관련된 모든 것에 관심이 많고, 새로운 기술을 적용하는 것을 즐깁니다.', 'NORMAL', '["2024-20439","2024-84762"]', 'NULL', '2024-10-25 14:45:00.000000', '5123e3f8-12c3-42d3-9fad-5cbc808e0793.jpg', '2024-12-01 17:50:00.000000'),
	('8fb98fb6-6b3c-4a00-92f8-68a0f53bf0ae', 'USER', '[]', 'sophia.miller987@gmail.com', b'0', '박수민', 'sophia987', 'sophia9876', '010-6789-0123', '박수민입니다. 끊임없이 배우고 성장하는 것을 중요시하며, 다양한 분야에서 경험을 쌓고 있습니다.', 'NORMAL', '["2024-53012","2024-32750"]', 'NULL', '2024-10-10 10:15:00.000000', '5123e3f8-12c3-42d3-9fad-5cbc808e0793.jpg', '2024-12-03 12:40:00.000000'),
	('8fcc64bc-6018-4f24-9dce-ae7160bf106b', 'USER', '[]', 'mike.jones23@gmail.com', b'0', '박민수', 'mike23', 'mike12345', '010-4567-8901', '박민수입니다. 도전적인 일을 좋아하고, 문제 해결을 즐깁니다. 항상 적극적인 자세로 임하고 있습니다.', 'NORMAL', '["2024-19230","2024-47895"]', 'NULL', '2024-11-15 12:45:00.000000', '5123e3f8-12c3-42d3-9fad-5cbc808e0793.jpg', '2024-11-30 11:20:00.000000'),
	('9119a18e-435c-4738-911c-0920fe538db3', 'USER', '[]', 'olivia.smith876@gmail.com', b'0', '박하늘', 'olivia876', 'olivia8765', '010-5678-1234', '박하늘입니다. 긍정적인 마인드를 가지고 있으며, 언제나 새로운 경험과 배움을 즐깁니다.', 'NORMAL', '["2024-20358","2024-74529"]', 'NULL', '2024-09-22 12:35:00.000000', '5123e3f8-12c3-42d3-9fad-5cbc808e0793.jpg', '2024-12-01 14:20:00.000000'),
	('935b6b3e-8181-48e7-9250-2380b9dc4861', 'USER', '[{"blackedDate":[2024,11,10,9,30],"blackReason":"Abusive behavior"}]', 'mike.choi563@gmail.com', b'1', '최우혁', 'mike563', 'mike5630', '010-9263-7482', '최우혁입니다. 새로운 도전과 기술을 좋아하며, 끊임없이 배워나가고 있습니다.', 'NORMAL', '["2024-31982","2024-24567"]', 'NULL', '2024-07-30 16:50:00.000000', '5123e3f8-12c3-42d3-9fad-5cbc808e0793.jpg', '2024-11-12 10:00:00.000000'),
	('953f9bef-b0bb-4f7d-8536-ca8c8aa04152', 'USER', '[]', 'nathan.smith432@gmail.com', b'0', '이서준', 'nathan432', 'nathan4321', '010-3579-4680', '이서준입니다. 프로젝트 관리와 팀워크를 중요하게 생각하며, 항상 새로운 도전과 기회를 찾고 있습니다.', 'NORMAL', '["2024-36840","2024-91268"]', 'NULL', '2024-11-03 18:10:00.000000', '5123e3f8-12c3-42d3-9fad-5cbc808e0793.jpg', '2024-12-02 10:05:00.000000'),
	('9790d693-9538-4950-b6d9-e01befcbadac', 'USER', '[]', 'ella.jones345@gmail.com', b'0', '최예지', 'ella345', 'ella3456', '010-2345-6789', '최예지입니다. 창의적인 아이디어와 기술 혁신에 관심이 많습니다. 사람들과의 협력을 중요시합니다.', 'NORMAL', '["2024-38729","2024-20751"]', 'NULL', '2024-10-29 15:20:00.000000', '5123e3f8-12c3-42d3-9fad-5cbc808e0793.jpg', '2024-12-01 13:15:00.000000'),
	('99571590-bf45-4ad0-ac32-de1c7cb1b1ff', 'USER', '[]', 'alice.miller123@gmail.com', b'0', '최윤아', 'alice123', 'alice12345', '010-6789-0123', '최윤아입니다. 저는 모든 일을 성실히 해내며, 언제나 열정을 가지고 활동합니다. 다양한 사람들과 소통하는 것을 좋아합니다.', 'NORMAL', '["2024-82346","2024-45193"]', 'NULL', '2024-09-30 14:00:00.000000', '5123e3f8-12c3-42d3-9fad-5cbc808e0793.jpg', '2024-12-02 16:25:00.000000'),
	('9d6fa4b8-7a0a-4abc-bfe4-6a2929a896e0', 'USER', '[]', 'lucas.wang789@gmail.com', b'0', '장윤호', 'lucas789', 'lucas78901', '010-3456-7890', '장윤호입니다. 창의적이고 혁신적인 아이디어를 제시하는 것을 좋아합니다. 다양한 사람들과 협업하는 것을 중요시합니다.', 'NORMAL', '["2024-75916","2024-13946"]', 'NULL', '2024-09-18 13:55:00.000000', '5123e3f8-12c3-42d3-9fad-5cbc808e0793.jpg', '2024-12-02 17:40:00.000000'),
	('c6cbaf96-dc11-467e-939a-6cf69b165f7a', 'USER', '[]', 'alexander.yoon234@gmail.com', b'0', '박도현', 'alex234', 'alex2345', '010-8391-5620', '박도현입니다. 항상 기술을 배우고, 새로운 도전을 즐기며 개발에 열정을 쏟고 있습니다.', 'NORMAL', '["2024-74103","2024-36784"]', 'NULL', '2024-11-20 17:50:00.000000', '5123e3f8-12c3-42d3-9fad-5cbc808e0793.jpg', '2024-12-01 16:30:00.000000'),
	('cdfc0ea0-cc93-4468-a50b-c89bd2071ef6', 'USER', '[]', 'olivia.lee123@gmail.com', b'0', '이서윤', 'olivia123', 'olivia1234', '010-5678-9012', '이서윤입니다. 혁신적인 아이디어를 제시하며, 도전적인 프로젝트에 참여하는 것을 즐깁니다. 팀워크와 협력을 중요시합니다.', 'NORMAL', '["2024-20439","2024-51872"]', 'NULL', '2024-11-02 16:50:00.000000', '5123e3f8-12c3-42d3-9fad-5cbc808e0793.jpg', '2024-12-01 18:25:00.000000'),
	('d9870e59-0285-4aef-9fb8-f0b84bc422b4', 'USER', '[]', 'isabella.kim823@gmail.com', b'0', '최유진', 'isabella823', 'isabella8230', '010-8297-3145', '최유진입니다. 데이터 분석과 인공지능 분야에 흥미를 가지고, 꾸준히 공부하고 있습니다.', 'NORMAL', '["2024-74103","2024-50628"]', 'NULL', '2024-11-02 15:30:00.000000', '5123e3f8-12c3-42d3-9fad-5cbc808e0793.jpg', '2024-12-01 13:50:00.000000'),
	('dcb02621-65da-489b-98f7-0cbe85386d92', 'ADMIN', '[]', 'userone123@gmail.com', b'0', '김영희', '관리자', 'pass1234', '010-2345-6789', '안녕하세요! 김영희입니다. 열정적인 사람으로 성장하고 싶습니다. 다양한 사람들과 협력하고 도전하는 걸 좋아합니다.', 'NORMAL', '[]', 'NULL', '2024-11-20 08:30:00.000000', '5123e3f8-12c3-42d3-9fad-5cbc808e0793.jpg', '2024-12-01 14:50:00.000000'),
	('ddee4715-3069-46a9-afdc-221252a97814', 'USER', '[]', 'grace.joo254@gmail.com', b'0', '이현주', 'grace254', 'grace2543', '010-2598-1473', '이현주입니다. 소프트웨어 개발에 큰 관심이 있으며, 다양한 개발 환경을 경험하고 있습니다.', 'NORMAL', '["2024-37540","2024-50783"]', 'NULL', '2024-08-25 11:05:00.000000', '5123e3f8-12c3-42d3-9fad-5cbc808e0793.jpg', '2024-12-03 09:00:00.000000'),
	('de7c3a39-186b-476b-9763-cc1ef2c3fadc', 'USER', '[]', 'emma.james122@gmail.com', b'0', '김유진', 'emma122', 'emma1224', '010-1938-2657', '김유진입니다. 사람들과의 소통과 협업을 중요하게 여기며, 항상 더 나은 결과를 위해 노력합니다.', 'NORMAL', '["2024-74529","2024-31428"]', 'NULL', '2024-09-18 17:55:00.000000', '5123e3f8-12c3-42d3-9fad-5cbc808e0793.jpg', '2024-12-03 09:30:00.000000'),
	('e8362a5d-c1ed-44ee-b500-4d78bab95476', 'USER', '[]', 'daniel.lee234@gmail.com', b'0', '이수호', 'daniel234', 'daniel2345', '010-1234-5678', '이수호입니다. 기술에 관심이 많고, 문제를 해결하는 것을 즐깁니다. 새로운 도전에 열려 있습니다.', 'NORMAL', '["2024-50671","2024-93204"]', 'NULL', '2024-11-11 12:30:00.000000', '5123e3f8-12c3-42d3-9fad-5cbc808e0793.jpg', '2024-12-03 09:15:00.000000'),
	('eefeb37c-8b04-4016-b8a9-53c2dd9593ca', 'USER', '[]', 'sophia.kim892@gmail.com', b'0', '조하린', 'sophia892', 'sophia8921', '010-6543-9876', '조하린입니다. 새로운 기술에 관심이 많고, 문제 해결을 위한 창의적 접근을 중요시합니다.', 'NORMAL', '["2024-92048","2024-29841"]', 'NULL', '2024-10-30 09:10:00.000000', '5123e3f8-12c3-42d3-9fad-5cbc808e0793.jpg', '2024-12-02 16:00:00.000000'),
	('f56bff85-d3e5-4c05-9b73-d9441950467a', 'USER', '[]', 'olivia.park657@gmail.com', b'0', '최지우', 'olivia657', 'olivia6578', '010-4321-9876', '최지우입니다. 창의력과 기술 혁신에 열정을 가지고 있으며, 협력적인 환경에서 일하는 것을 좋아합니다.', 'NORMAL', '["2024-75196","2024-51872"]', 'NULL', '2024-11-07 14:25:00.000000', '5123e3f8-12c3-42d3-9fad-5cbc808e0793.jpg', '2024-12-02 18:00:00.000000'),
	('f78f04bf-eccd-4f7a-8389-6b241a7a6aae', 'USER', '[]', 'james.lee1123@gmail.com', b'0', '김지우', 'james1123', 'james11234', '010-5678-9012', '김지우입니다. 저는 문제를 해결하는 것을 좋아하고, 끊임없이 배우는 것을 즐깁니다. 도전적인 프로젝트를 선호합니다.', 'NORMAL', '["2024-74103","2024-90562"]', 'NULL', '2024-11-07 09:45:00.000000', '5123e3f8-12c3-42d3-9fad-5cbc808e0793.jpg', '2024-12-01 13:30:00.000000');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;