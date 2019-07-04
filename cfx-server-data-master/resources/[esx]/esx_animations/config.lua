Config = {}

Config.Animations = {
	
	{
		name  = 'festives',
		label = 'เทศกาล',
		items = {
	    {label = "เล่นดนตรี", type = "scenario", data = {anim = "WORLD_HUMAN_MUSICIAN"}},
	    {label = "ดีเจ", type = "anim", data = {lib = "anim@mp_player_intcelebrationmale@dj", anim = "dj"}},
	    {label = "ดื่มเบียร์", type = "scenario", data = {anim = "WORLD_HUMAN_DRINKING"}},
	    {label = "เบียร์ในบาร์", type = "scenario", data = {anim = "WORLD_HUMAN_PARTYING"}},
	    {label = "กีตาร์ล่องหน", type = "anim", data = {lib = "anim@mp_player_intcelebrationmale@air_guitar", anim = "air_guitar"}},
	    {label = "กระเด้า", type = "anim", data = {lib = "anim@mp_player_intcelebrationfemale@air_shagging", anim = "air_shagging"}},
	    {label = "ร็อค", type = "anim", data = {lib = "mp_player_int_upperrock", anim = "mp_player_int_rock"}},
	    {label = "ดูดพันลำ", type = "scenario", data = {anim = "WORLD_HUMAN_SMOKING_POT"}},
	    {label = "เมา", type = "anim", data = {lib = "amb@world_human_bum_standing@drunk@idle_a", anim = "idle_a"}},
	    {label = "นั้งอาเจียน", type = "anim", data = {lib = "oddjobs@taxi@tie", anim = "vomit_outside"}},
		}
	},

	{
		name  = 'greetings',
		label = 'การคำนับ',
		items = {
	    {label = "ทักทาย", type = "anim", data = {lib = "gestures@m@standing@casual", anim = "gesture_hello"}},
	    {label = "จับมือ", type = "anim", data = {lib = "mp_common", anim = "givetake1_a"}},
	    {label = "ชนมือ", type = "anim", data = {lib = "mp_ped_interaction", anim = "handshake_guy_a"}},
	    {label = "กอดทักทาย", type = "anim", data = {lib = "mp_ped_interaction", anim = "hugs_guy_a"}},
	    {label = "ทหารคำนับ", type = "anim", data = {lib = "mp_player_int_uppersalute", anim = "mp_player_int_salute"}},
		}
	},

	{
		name  = 'work',
		label = 'การทำงาน',
		items = {
	    {label = "มอบตัว", type = "anim", data = {lib = "random@arrests@busted", anim = "idle_c"}},
	    {label = "ตกปลา", type = "scenario", data = {anim = "world_human_stand_fishing"}},
	    {label = "ตรวจสอบ", type = "anim", data = {lib = "amb@code_human_police_investigate@idle_b", anim = "idle_f"}},
	    {label = "พูดคุยทางวิทยุ", type = "anim", data = {lib = "random@arrests", anim = "generic_radio_chatter"}},
	    {label = "โบกรถ", type = "scenario", data = {anim = "WORLD_HUMAN_CAR_PARK_ATTENDANT"}},
	    {label = "กล้องส่องทางไกล", type = "scenario", data = {anim = "WORLD_HUMAN_BINOCULARS"}},
	    {label = "การเกษตร", type = "scenario", data = {anim = "world_human_gardener_plant"}},
	    {label = "ซ่อมใต้รถ", type = "scenario", data = {anim = "world_human_vehicle_mechanic"}},
	    {label = "ซ่อมเครื่องยนต์", type = "anim", data = {lib = "mini@repair", anim = "fixing_a_ped"}},
	    {label = "หมอสังเกต", type = "scenario", data = {anim = "CODE_HUMAN_MEDIC_KNEEL"}},
	    {label = "รถแท็กซี่พูดคุยกับลูกค้า", type = "anim", data = {lib = "oddjobs@taxi@driver", anim = "leanover_idle"}},
	    {label = "แท็กซี่ให้ใบเรียกเก็บเงิน", type = "anim", data = {lib = "oddjobs@taxi@cyi", anim = "std_hand_off_ps_passenger"}},
	    {label = "ยกของ", type = "anim", data = {lib = "mp_am_hold_up", anim = "purchase_beerbox_shopkeeper"}},
	    --{label = "ทำหน้าที่ยิง", type = "anim", data = {lib = "mini@drinking", anim = "shots_barman_b"}},
	    {label = "ถ่ายรูป", type = "scenario", data = {anim = "WORLD_HUMAN_PAPARAZZI"}},
	    {label = "อ่านรายงาน", type = "scenario", data = {anim = "WORLD_HUMAN_CLIPBOARD"}},
	    {label = "ตอกตะปู", type = "scenario", data = {anim = "WORLD_HUMAN_HAMMERING"}},
	    --{label = "ทำรอบ", type = "scenario", data = {anim = "WORLD_HUMAN_BUM_FREEWAY"}},
	    {label = "ยืนท่ารูปปั้น", type = "scenario", data = {anim = "WORLD_HUMAN_HUMAN_STATUE"}},
		}
	},

	{
		name  = 'humors',
		label = 'อารมณ์ความรู้สึก',
		items = {
	    {label = "ขอแสดงความยินดี", type = "scenario", data = {anim = "WORLD_HUMAN_CHEERING"}},
	    {label = "เยี่ยม", type = "anim", data = {lib = "mp_action", anim = "thanks_male_06"}},
	    {label = "คุณ", type = "anim", data = {lib = "gestures@m@standing@casual", anim = "gesture_point"}},
	    {label = "ตามมา", type = "anim", data = {lib = "gestures@m@standing@casual", anim = "gesture_come_here_soft"}}, 
	    {label = "ที่นี้บราซิล", type = "anim", data = {lib = "gestures@m@standing@casual", anim = "gesture_bring_it_on"}},
	    --{label = "สำหรับฉัน", type = "anim", data = {lib = "gestures@m@standing@casual", anim = "gesture_me"}},
	    --{label = "ฉันรู้ว่า,หญิงขายบริการ", type = "anim", data = {lib = "anim@am_hold_up@male", anim = "shoplift_high"}},
	    --{label = "จะเหนื่อย", type = "scenario", data = {lib = "amb@world_human_jog_standing@male@idle_b", anim = "idle_d"}},
	    --{label = "ฉันอยู่ในอึ", type = "scenario", data = {lib = "amb@world_human_bum_standing@depressed@idle_a", anim = "idle_a"}},
	    {label = "กลุ้มใจ", type = "anim", data = {lib = "anim@mp_player_intcelebrationmale@face_palm", anim = "face_palm"}},
	    {label = "สงบสติอารมณ์", type = "anim", data = {lib = "gestures@m@standing@casual", anim = "gesture_easy_now"}},
	    {label = "ทำอะไรกัน", type = "anim", data = {lib = "oddjobs@assassinate@multi@", anim = "react_big_variations_a"}},
	    {label = "กลัว", type = "anim", data = {lib = "amb@code_human_cower_stand@male@react_cowering", anim = "base_right"}},
	    {label = "พร้อมต่อสู้", type = "anim", data = {lib = "anim@deathmatch_intros@unarmed", anim = "intro_male_unarmed_e"}},
	    {label = "มันเป็นไปไม่ได้!", type = "anim", data = {lib = "gestures@m@standing@casual", anim = "gesture_damn"}},
	    {label = "โอบกอด", type = "anim", data = {lib = "mp_ped_interaction", anim = "kisses_guy_a"}},
	    {label = "นิ้วแห่งเกียรติยศ", type = "anim", data = {lib = "mp_player_int_upperfinger", anim = "mp_player_int_finger_01_enter"}},
	    {label = "ขัดจรวจ", type = "anim", data = {lib = "mp_player_int_upperwank", anim = "mp_player_int_wank_01"}},
	    {label = "ยิงตัวตาย", type = "anim", data = {lib = "mp_suicide", anim = "pistol"}},
		}
	},

	{
		name  = 'sports',
		label = 'กีฬา',
		items = {
	    {label = "เบ่งกล้าม", type = "anim", data = {lib = "amb@world_human_muscle_flex@arms_at_side@base", anim = "base"}},
	    {label = "ยกดัมเบล", type = "anim", data = {lib = "amb@world_human_muscle_free_weights@male@barbell@base", anim = "base"}},
	    {label = "วิดพื้น", type = "anim", data = {lib = "amb@world_human_push_ups@male@base", anim = "base"}},
	    {label = "ซิทอัพ", type = "anim", data = {lib = "amb@world_human_sit_ups@male@base", anim = "base"}},
	    {label = "โยคะ", type = "anim", data = {lib = "amb@world_human_yoga@male@base", anim = "base_a"}},
		}
	},

	{
		name  = 'misc',
		label = 'รวมท่าทาง',
		items = {
	    {label = "ดื่มกาแฟ", type = "anim", data = {lib = "amb@world_human_aa_coffee@idle_a", anim = "idle_a"}},
	    {label = "นั่ง", type = "anim", data = {lib = "anim@heists@prison_heistunfinished_biztarget_idle", anim = "target_idle"}},
	    {label = "นั่งลง (บนพื้น)", type = "scenario", data = {anim = "WORLD_HUMAN_PICNIC"}},
	    {label = "พิงผนัง", type = "scenario", data = {anim = "world_human_leaning"}},
	    {label = "นอนหงาย", type = "scenario", data = {anim = "WORLD_HUMAN_SUNBATHE_BACK"}},
	    {label = "นอนคว่ำ", type = "scenario", data = {anim = "WORLD_HUMAN_SUNBATHE"}},
	    {label = "ทำความสะอาด", type = "scenario", data = {anim = "world_human_maid_clean"}},
	    {label = "ปิ้งย่าง", type = "scenario", data = {anim = "PROP_HUMAN_BBQ"}},
	    {label = "กางแขน", type = "anim", data = {lib = "mini@prostitutes@sexlow_veh", anim = "low_car_bj_to_prop_female"}},
	    {label = "ถ่ายรูป", type = "scenario", data = {anim = "world_human_tourist_mobile"}},
	    {label = "แอบฟัง", type = "anim", data = {lib = "mini@safe_cracking", anim = "idle_base"}}, 
		}
	},

	{
		name  = 'porn',
		label = 'เซ็กส์',
		items = {
	    {label = "เซ็กส์-01", type = "anim", data = {lib = "oddjobs@towing", anim = "m_blow_job_loop"}},
	    {label = "เซ็กส์-02", type = "anim", data = {lib = "oddjobs@towing", anim = "f_blow_job_loop"}},
	    {label = "เซ็กส์-03", type = "anim", data = {lib = "mini@prostitutes@sexlow_veh", anim = "low_car_sex_loop_player"}},
	    {label = "เซ็กส์-04", type = "anim", data = {lib = "mini@prostitutes@sexlow_veh", anim = "low_car_sex_loop_female"}},
	    {label = "เซ็กส์-05", type = "anim", data = {lib = "mp_player_int_uppergrab_crotch", anim = "mp_player_int_grab_crotch"}},
	    {label = "เซ็กส์-06", type = "anim", data = {lib = "mini@strip_club@idles@stripper", anim = "stripper_idle_02"}},
	    {label = "เซ็กส์-07", type = "scenario", data = {anim = "WORLD_HUMAN_PROSTITUTE_HIGH_CLASS"}},
	    {label = "เซ็กส์-08", type = "anim", data = {lib = "mini@strip_club@backroom@", anim = "stripper_b_backroom_idle_b"}},
	    {label = "เซ็กส์-09", type = "anim", data = {lib = "mini@strip_club@lap_dance@ld_girl_a_song_a_p1", anim = "ld_girl_a_song_a_p1_f"}},
	    {label = "เซ็กส์-10", type = "anim", data = {lib = "mini@strip_club@private_dance@part2", anim = "priv_dance_p2"}},
	    {label = "เซ็กส์-11", type = "anim", data = {lib = "mini@strip_club@private_dance@part3", anim = "priv_dance_p3"}},
			}
	},

}