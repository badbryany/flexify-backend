CREATE TABLE
    IF NOT EXISTS accounts (
        a_id serial primary key,
        username TEXT NOT NULL,
        email TEXT,
        firstname TEXT,
        surname TEXT,
        password TEXT NOT NULL,
        profilepicture_path TEXT
    );

CREATE TABLE
    IF NOT EXISTS friends (
        first_a_id INTEGER NOT NULL,
        second_a_id INTEGER NOT NULL
    );

CREATE TABLE
    IF NOT EXISTS friendship_requests (
        request_id serial primary key,
        requester_id INTEGER NOT NULL,
        send_id INTEGER NOT NULL
    );

CREATE TABLE
    IF NOT EXISTS exercises (
        a_id INTEGER NOT NULL,
        title TEXT NOT NULL,
        type TEXT,
        affectedMuscles TEXT,
        equipment TEXT
    );

CREATE TABLE
    IF NOT EXISTS sets (
        s_id INTEGER NOT NULL,
        a_id INTEGER NOT NULL,
        exerciseName TEXT NOT NULL,
        reps INTEGER NOT NULL,
        weight NUMERIC NOT NULL,
        date TEXT NOT NULL,
        duration INTEGER NOT NULL,
        isBodyWeight INTEGER NOT NULL,
        isDuration INTEGER NOT NULL
    );

CREATE TABLE
    IF NOT EXISTS predefined_exercises (
        title TEXT NOT NULL,
        affected_muscles TEXT,
        type TEXT,
        equipment TEXT,
        instruction TEXT
    );

INSERT INTO
    predefined_exercises (
        title,
        affected_muscles,
        type,
        equipment,
        instruction
    )
VALUES
    (
        '90/90 Hamstring Stretch',
        'Upper Legs',
        'Stretching',
        'Body Only',
        '1.) To begin this exercise; start off lying flat on your back with one leg extended out and with your other leg bend it and grab the knee with your hands.2.) Take the leg that is being bent and extend it straight into the air and hold onto the position for up to 15 seconds and then alternate legs.3.) Repeat this exercise for as many repetitions as needed'
    ),
    (
        'Ab Draw Leg Slide',
        'Core',
        'Strength',
        'Body Only',
        'Steps :1.) Start by laying on your back with your knees bent at 90-degrees keeping your arms at your sides, palms up.2.) Maintaining slight pressure on your hands, extend your legs slowly forward so that you feel a stretch and a contraction in your abdominals.3.) Return back to the starting position and repeat for as many reps and sets desired.'
    ),
    (
        'Ab Roll',
        'Core,Shoulders',
        'Strength',
        'Body Only',
        'Steps :1.) Start by sitting on the floor with your knees bent, feet planted firmly on the floor and your hands at your sides behind your knees.2.) Once in position rock backwards off of your pelvis towards the floor, keep your hands underneath your knees forming a "C" shape with your spine.3.) Make sure that you keep your feet planted firmly on the floor throughout the entire motion.4.) Squeeze with your abdominals and hold for a few seconds, then return back to the starting position.5.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Abdominal Hip Roll',
        'Core',
        'Strength',
        'Body Only',
        'Steps :1.) Start by laying down on your back flat on the floor keeping your arms straight out and wide to your sides and feet extended out in front of you in a "T" position.2.) Slowly raise your knees up until they are at thigh level and create a 90-degree angle to the floor, then begin by twist at your hips and lowering your knees towards the floor in a pendulum motion.3.) Don t pause when you reach the bottom, instantly return back to the starting position and repeat in the opposite direction.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Abdominal Pendulum',
        'Core',
        'Strength',
        'Body Only',
        'Steps :1.) Begin by laying with your back flat on the floor, your legs together extended out in front of you and your hands placed out to your sides so that you are in a "T" position.2.) Slowly lift your legs up and over your body so that you are creating a right angle to the floor, then twisting only at your hips, lower your feet slowly to the floor to your right without losing any control.3.) As soon as you feel a stretch in your obliques, return to the starting position and repeat on the opposite side.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Aerobics',
        'Cardio',
        'Cardio',
        'Others',
        'Aerobic Exercise focuses upon cardiovascular fitness, muscle strength and endurance by performing aerobic workouts.'
    ),
    (
        'Air Bike',
        'Core',
        'Strength',
        'Body Only',
        '1.) Start off lying flat as if you were going to perform a sit up putting your hands behind your your head and lifting your shoulders into a crunch position.2.) Bring your knees up so that they are perpendicular with the floor and your lower legs are parallel with the ground as this will be your starting position.3.) Slowly go through a cycle pedal motion kicking forward with your right leg and bringing in the knee of the left leg.4.) Next bring your right elbow close to your left knee by crunching to the side.5.) Return back to the starting position as you breathe in then crunch to the opposite side as you cycle your legs and bring your left elbow close to your right knee.6.) Repeat with each side for as many reps and sets as desired.Tips : 1.) Reduce the speed of the exercise for more intensity and better results.'
    ),
    (
        'All Fours Quad Stretch',
        'Upper Legs',
        'Stretching',
        'Body Only',
        '1.) To begin this exercise; start off in a kneeling pushing position and lift your right leg off of the floor and hold onto it with your right hand.2.) With your hand hold onto your ankle and stretch out your upper legs holding on for 15 to 30 seconds, then alternate.3.) Repeat this exercise for as many repetitions as needed'
    ),
    (
        'Alternating Arm Cobra',
        'Core,Back',
        'Strength',
        'Body Only',
        '1.) Start off by laying face down on the floor in a prone position with your arms at your sides.2.) Squeeze your glutes and lift your chest off of the floor with your arms alternately touching the floor from side to side while keeping your arms straight.3.) Repeat for as many reps and sets desired.'
    ),
    (
        'Alternating Diagonal Leg Bound',
        'Upper Legs,Lower Legs',
        'Strength',
        'Body Only',
        'Steps :1.) Start in a stance at an end of a room with one foot in front of the other.2.) Push off with your front leg with as much force as possible, driving your opposite knee up and forward, landing with your front foot.3.) Then repeat with the opposite leg and push with as much force as possible cover as much distance as you can.4.) Repeat for as many reps and sets as you desire.'
    ),
    (
        'Alternating Floor Leg Raise',
        'Core',
        'Strength',
        'Body Only',
        'Steps :1.) Start by laying with your back flat on the floor, arms at your side and feet extended out straight in front of you.2.) Slowly lift one of your legs up off of the floor, keeping the other one still and on the floor until your elevated foot is at a 90-degree angle with the ground.3.) Feel a stretch in your abdominals then return the leg back to the starting position and repeat with the opposite leg.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Alternating Heel Touch',
        'Core',
        'Strength',
        'Body Only',
        '1.) Start off lying on the floor with your knees bent, your feet on the floor at around 18 to 24 inches apart, and your arms extended by your side.2.) Once in the starting position, crunch forward over your torso to the right side and touche your right heel.3.) Hold this position for a few seconds, squeezing your abs and then return back to the starting position.4.) Switch to the other side, crunching over your torso on the left side and touching your left heel, squeezing your abs and holding the contraction for a count.5.) Return back to the starting position and alternate sides for the desired about of reps and sets.'
    ),
    (
        'Alternating Leg Bridge',
        'Core,Glutes,Upper Legs',
        'Strength',
        'Body Only',
        '1.) Start by laying on your back with arms at your sides , keeping one knee bent with your heel on the ground and the other leg pointed straight out in front of you in a 45-degree angle.2.) Slowly lift your hips off of the ground and squeeze your glutes.3.) Form a straight line with your body through your shoulders and knees.4.) Hold onto this position for a few seconds then return back to the starting position.5.) Alternate legs and repeat.'
    ),
    (
        'Alternating Reach and Catch',
        'Core',
        'Strength',
        'Body Only',
        'Steps :1.) Begin by laying with your back flat on the floor, keeping your legs bent and feet planted on the floor to stabilize your body.2.) Then take both of your hands and place them on your right thigh until you reach your knee until you feel a stretch in your abs, then return back to the starting position.3.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Alternating Reverse Hyper (Flat Bench)',
        'Core,Glutes',
        'Strength',
        'Bench',
        'Steps :1.) Start by laying face down in a prone position on a bench with one foot touching the floor and the other leg raised.2.) Once in position lift one leg up until you feel tension in your abs and glutes, hold for a count then return back to the starting position.3.) Alternate with the opposite leg and repeat for as many reps and sets as desired.'
    ),
    (
        'Ankle Circles',
        'Lower Legs',
        'Stretching',
        'Body Only',
        'The ankle circles exercise is the most simple workout for the calves to loosen the joints and strengthen and improve flexibility within the muscle.Steps :1.) Start by standing on one foot near a chair or wall for support.2.) Lift your foot off the ground and draw circles clockwise in the air with your toes.3.) Reverse the direction (counter-clockwise) and switch feet.'
    ),
    (
        'Arm Circles',
        'Shoulders',
        'Stretching',
        'Body Only',
        'Steps :1.) Start by standing up straight with your feet shoulder width apart and your arms extended out to your sides so that you create a "T" shape and should be parallel to the floor.2.) Slowly make circles with your arms feeling a stretch in your shoulders as you continue to rotate in a circular motion.3.) Continue this motion for 10 to 20 seconds then return to the starting position.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Assisted Chest Stretch',
        'Chest',
        'Stretching',
        'Body Only',
        'Steps :1.) In this stretch you will need a partner behind you to assist.2.) Start off by sitting upright on the floor with your partner behind you, placing your hands behind your head and legs extended out in front of you with a slight bend in the knees.3.) Have your partner hold your elbows, then try and pull your elbows from behind your head for about 15 to 30 seconds then release.4.) Then afterwards have your partner pull back on your elbows again but easily this time to help stretch out the chest muscles.'
    ),
    (
        'Assisted Hyperextension',
        'Back,Upper Legs,Glutes',
        'Strength',
        'Body Only',
        '1.) To begin this exercise; have a partner grab your legs as your lay down on your stomach on a flat bench until your pelvis has reached the end of the bench.2.) Keep your body straight and cross your arms across your chest and then start to bend forward as far as you can until you can almost touch the floor.3.) Return back to the starting position using your torso and inhale on the way up.4.) Repeat this exercise for as many repetitions as needed.'
    ),
    (
        'Back Bend',
        'Chest',
        'Stretching',
        'Body Only',
        'Steps :1.) Begin by standing up straight with your arms at your side and feet shoulder width apart.2.) Then place your hands on your lower back, fingers pointed downward and try to extend your arms back and touch your elbows.3.) Return back to the starting position and repeat for as many reps as possible.'
    ),
    (
        'Back Extension (Prone)',
        'Back',
        'Stretching',
        'Body Only',
        '1.) To begin the exercise; position your stomach flat on the floor with your arms extended down by your side.2.) With your body flat, extend your lower back and lift your chest up off of the ground. 3.) In this process do not use your arms to push up, use your back to extend your spine up.4.) Repeat this exercise for as many repetitions as needed.'
    ),
    (
        'Back Hyperextension',
        'Back',
        'Stretching',
        'Machine - Strength',
        'This back hyper-extension exercise gives strength to the back and core muscles as well as increases flexibility.Steps :1.) Start by adjusting the hyper-extension machine so that your ankles are tucked under the footpads and thighs are across the top pad as this will be your starting position.2.) Keeping your arms folded across your chest and your back straight, slowly bend at your waist towards the ground until you feel a stretch in your core and lower back.3.) Hold for a count and then slowly return back to the starting position.Tips : 1.) Refrain from arching your back during this exercise.'
    ),
    (
        'Back Stretch',
        'Back,Core,Shoulders',
        'Stretching',
        'Body Only',
        '1.) Begin by sitting flat on the floor with your legs extended hip-width apart and keep your spine straight so that your head is pointed up towards the ceiling.2.) Take your hands and extend them out in front of you so that they are slightly below shoulder level with your palms facing up.3.) Straighten out your spine by inhaling and lifting up through your hips, then through your exhale curl the chin towards your chest.4.) In this motion with the rest of your body curl out towards your feet holding onto this position for a few seconds.5.) Exhale back out and return to the starting position.'
    ),
    (
        'Band Alternating Bicep Curl',
        'Biceps,Forearms,Triceps',
        'Strength',
        'Bands',
        'The alternating biceps curl with band exercise will use either an exercise band or bungee for resistance to help strengthen the bicep muscle.1.) Start by placing an exercise band under your feet and hold the handles palms forward in your hands.2.) Stand with your feet shoulder-width apart, knees slightly bent and your abs drawn in.3.) Curl your arms up and down in an alternating motion, keeping your body straight, and isolating the bicep muscle.4.) As you become comfortable with the motion, increase your speed.5.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Band Bench Press',
        'Chest,Triceps,Shoulders',
        'Strength',
        'Bands Bench',
        'Steps :1.) To begin this exercise; start off with placing a band under the leg of the bench where your head will be resting.2.) Following this placement, lie down flat on a flat bench and push your arms forward so that you have the handles in front of you at your shoulder width.3.) Then bring the handles down as if you are doing a normal barbell bench press. 4.) Right before you are about to touch your chest, squeeze your pectorals and hold the position for a few seconds and return back to the starting position.5.) Repeat this exercise for as many repetitions as needed.'
    ),
    (
        'Band Calf Raise',
        'Lower Legs',
        'Strength',
        'Bands',
        '1.) To begin this exercise; start off with taking an exercise and standing on it with equal amount of band on both sides.2.) Taking the handles of the bands, elevate your arms towards the side of your head so that the bands tighten up.3.) Then while leaving your hands by your head, stand on your toes and squeeze tightly on your calves.4.) After holding on for a few seconds, release and go back to the starting position with your hands still by your head.5.) Repeat this exercise for as many repetitions as needed.'
    ),
    (
        'Band Calf Raise',
        'Lower Legs',
        'Strength',
        'Bands',
        'The band calf raise exercise uses a band to create resistance in the calf muscle1.) Start by standing up straight with your toes on an exercise band and raise the handles up to your shoulders.2.) Raise up on your toes, keeping your hands up by your shoulders, feeling a stretch in your calf muscles.3.) Pause for a moment and then lower your heel to the floor.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Band Cross-Over',
        'Chest,Biceps,Shoulders',
        'Strength',
        'Bands',
        'This exercise uses unique and variable resistance to target your chest and biceps.Steps :1.) Take a resistance band and wrap it around a straight pole or the post of an exercise machine. Keeping the band at around chest level, face away from the post and hold the handles in each hand, spreading them out to your sides.2.) Once you have wrapped the band around the pole, step back until you feel resistance, standing with your feet shoulder-width apart, and keep your knees bent and abs tight.3.) To perform the exercise, slowly allow your hands to come in towards each other, keeping your arms extended out in front of you, until you feel a stretch in your chest.4.) Hold this position for a few seconds then return back to the starting position with your hands extended out and handles spread out at your sides.Tips : 1.) By using a straight pole, it provides stability to perform the exercise and less likely to slip thus injuring yourself.2.) You are able to vary the resistance by either stepping towards or away from where the band is wrapped around.'
    ),
    (
        'Band Good Morning',
        'Upper Legs,Glutes',
        'Strength',
        'Bands',
        '1.) To begin this exercise; start off standing on a band, wrapping it around your neck and making sure that it is evenly distributed for stretching in each arm.2.) Bend at the knees and extend down with your hips then straighten out your legs and come to a vertical position.3.) Repeat this exercise for as many repetitions as needed'
    ),
    (
        'Band Hamstring Stretch',
        'Upper Legs',
        'Stretching',
        'Bands',
        'Steps :1.) Start by laying with your back flat on the ground with one leg extended above you and the other kept straight and flat on the floor.2.) Take either a belt, rope or exercise band and loop it around the ball of your foot, then pull on the belt to put tension on your calves and hamstrings.3.) Hold this position for 15 to 30 seconds then return to the start.4.) Repeat for as many reps and however long you desire.'
    ),
    (
        'Band Hip Lift',
        'Glutes,Lower Legs,Upper Legs',
        'Powerlifting',
        'Bands',
        '1.) To begin this exercise; take a band and secure it underneath two dumbbells so that they wont move.2.) Move your body so that your hips are right under the bands and set up for a basic sit up position with your knees up and feet firm on the floor. 3.) Keep your hands extended behind your head.4.) Push your shoulders to the floor as you raise your hips and extend the band as high as possible. 5.) Hold onto the position for a few seconds and return to the start.6.) Repeat this exercise for as many repetitions as needed.'
    ),
    (
        'Band Lateral Raise',
        'Shoulders',
        'Strength',
        'Bands',
        '1.) To begin this exercise; stand on a band so that it is evenly distributed to be pulled by each arm.2.) Grab the handles and keep you arms down and rested at your side.3.) Then using your shoulders, raise the hands above your sides so that they are at shoulder level then lower the handles back down to the starting position.4.) Repeat this exercise for as many repetitions as needed.'
    ),
    (
        'Band Quad Stretch',
        'Upper Legs',
        'Stretching',
        'Bands',
        'Steps :1.) Start by sitting on the ground and looping a band, rope or belt around one foot.2.) Twist your body over to your stomach and lay flat face down on the floor and flex the knee with the band wrapped around it, keeping the other fully extended behind you.3.) By pulling on the band, your hip and knee should come up off of the floor creating tension in your quads and hip flexors.4.) Hold this stretch for 15 to 30 seconds and return to the starting position.5.) Repeat for as many reps, sets and however long you desire.'
    ),
    (
        'Band Reverse Fly',
        'Triceps,Back',
        'Strength',
        'Bands',
        'The band reverse fly exercise will help strengthen your upper back and help improve your posture.1.) Start off by placing a resistance band mid-waist high either around a post or an exercise machine.2.) Stand in front of the machine or post, keeping your feet together, abs tight and knees slightly bent so that you feel a tension in the band.3.) Slowly and in a controlled manner, bring your arms back until they are parallel with your sides.4.) Once you reach the final position, hold for a count while squeezing your back muscles, then return back to the starting position.Tips :1.) Make sure that you are able to use a band that you are able to perform the exercise with.'
    ),
    (
        'Band Seated Calf Stretch',
        'Lower Legs,Back,Upper Legs',
        'Stretching',
        'Bands',
        'Steps :1.) Start by sitting up straight with your legs extended out in front of you.2.) Slowly bend one knee back toward you and placing your foot on the floor to stabilize your body.3.) With the other leg keep it extended and flex your ankle so that the toes are pointed in towards your body.4.) Either using an exercise band, towel, belt or even your own hand pull your toes towards you until you feel a stretch in your calves and hold this position for 15 to 30 seconds.5.) Return to the starting position and repeat for as many reps, sets and duration as desired.'
    ),
    (
        'Band Shoulder Press',
        'Shoulders,Triceps',
        'Strength',
        'Bands',
        '1.) To begin this exercise; stand on a band so that it is evenly distributed to be pulled by each arm.2.) Grab the handles and press your arms up so that they are at shoulder level.3.) Then using your shoulders, raise the hands above your sides so that they are above your head then lower the handles back down to the starting position.4.) Repeat this exercise for as many repetitions as needed.'
    ),
    (
        'Band Shoulder Press (Stability Ball)',
        'Shoulders,Core,Back',
        'Strength',
        'Bands',
        'Steps :1.) Begin by sitting on an exercise ball that is placed on top of a stretched band with a grip held in each hand and keeping your feet flat on the floor.2.) When balanced slowly press the bands upward so that they are elevated over your head and hold this position for a count and return back to the start.3.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Band Sit-Up',
        'Core',
        'Strength',
        'Bench',
        '1.) To begin this exercise; take the exercise bands and wrap them around the base of the bench.2.) Lay down with your back flat on the bench, holding onto the bands. 3.) Then curl up your body, holding the bands, so that your chest is as close to your abdominals as possible. 4.) Squeeze and hold your abs tightly for a few seconds the return back to the starting position.5.) Repeat this exercise for as many repetitions as needed.'
    ),
    (
        'Band Squat',
        'Upper Legs,Lower Legs,Glutes',
        'Strength',
        'Bands',
        'The band squat exercise is the version of the squat that uses exercise bands to increase resistance and flexibility instead of using weights.1.) Start off standing with your feet on the exercise bands with your feet shoulder width apart.2.) Grab onto the handles of the bands and pull them up to your shoulders in a slow and controlled motion.3.) With your abs drawn in, squat down until your thighs are parallel with the floor.4.) Slowly return to the starting position.5.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Band Upright Row',
        'Shoulders,Shoulders,Triceps',
        'Strength',
        'Bands',
        'The band upright row exercise is a great alternative to the upright row that uses dumbbells or barbells and is great for beginners or individuals just rehabilitating from injury as the bands allow you to control the resistance level.1.) Stand on the band so that the handles are level with your upper thigh.2.) With your back straight and abs drawn in raise your hands upward to your collarbone.3.) Your elbows and arms should be parallel with the floor.4.) Slowly lower your arms and return to starting position.5.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Band Upright Row',
        'Back,,',
        'Strength',
        'Bands',
        'The exercise band row is a compound bilateral exercise that works various aspects of the back and shoulder. Steps:1.) Begin by standing tall with your feet hip-width apart, knees soft and core engaged.2.) Using both hands, pull the band handles in towards your outer chest, pause for a 1-2 count.3.) Slowly return to where arms are fully extended and repeat for desired repetitions.'
    ),
    (
        'Barbell 1/2 Squat',
        'Upper Legs,Glutes,Lower Legs',
        'Strength',
        'Barbell',
        'Steps :1.) Start by setting up a weighted barbell with the amount of weight that you would like to perform.2.) Position the barbell on your shoulders with an overhand wide shoulder width grip just as in a regular squat position.3.) Slowly squat down towards the floor about 12 inches, not as deep as a regular squat, and hold for a count.4.) Return back up to the starting position.5.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Barbell 1/4 Squat',
        'Upper Legs,Glutes,Lower Legs',
        'Strength',
        'Barbell',
        'Steps :1.) Start by setting up a barbell with the amount of weight that you would like to perform for this exercise and placing it on your shoulder blades just as if you were to be performing a squat.2.) Place your hands in a shoulder width overhand grip and keep your knees slightly bent.3.) Slowly lower and squat yourself down towards the ground about 6 to 12 inches and hold for a count.4.) Return back to the starting position.5.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Barbell Ab Rollout',
        'Core',
        'Strength',
        'Barbell',
        'The barbell ab rollout exercise works the abdominals and entire core.1.) Start by placing a barbell on the floor at your feet and then bending at your waist, gripping the barbell with a shoulder-width grip, as this will be your starting position.2.) Using a slow and controlled motion, roll the bar out so that your back is straight, keeping your arms straight throughout the entire motion.3.) Once at the final position and you feel your abs tightening, hold for a count and squeeze your abdominals, then return back to the starting position.Tips : 1.) Practice raising your hips and butt as high as you can with this exercise.'
    ),
    (
        'Barbell Ab Rollout (Kneeling)',
        'Core,Shoulders,Back',
        'Strength',
        'Barbell',
        'The ab rollout on knees exercise works the abs, lower back and arm muscles and is the proper version of an ab roller workout.1.) Start off placing a barbell on the floor in front of you and kneeling in front of the bar, gripping it with a shoulder-width overhand grip.2.) With a slow controlled motion, roll the bar out so that your back is straight, bend your knees and keep your feet off the floor.3.) Keep your arms straight throughout the exercise.4.) Roll back up bring the bar under your shoulders and return to the starting position.5.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Barbell Alternating Front and Back Press',
        'Shoulders,Triceps',
        'Strength',
        'Barbell',
        'Steps :1.) Start by sitting up straight on the end of a flat bench with your feet shoulder width apart, holding a weighted barbell at waist level with an overhand grip.2.) Then push the barbell up and above your head so that your arms are fully extended.3.) Slowly lower the bar towards your upper chest so that its almost touching then immediately push it back up to the starting position.4.) As soon as you reach the up position, lower the bar back down behind your neck and hold for a count.5.) Return back to the starting position.6.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Barbell Alternating Press',
        'Shoulders,Triceps',
        'Strength',
        'Barbell',
        'Steps :1.) Begin by standing up straight with your feet shoulder width apart, holding a weighted barbell at waist level with an overhand grip.2.) Then push the barbell up and above your head so that your arms are fully extended.3.) Slowly lower the bar towards your upper chest so that it is almost touching, then immediately push it back up to the starting position.4.) As soon as you reach this position, lower the bar back down behind your neck and hold for a count.5.) Return back to the starting position.6.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Barbell Behind the Back Shrug',
        'Back,Shoulders,',
        'Strength',
        'Barbell',
        '1.) To begin this exercise; start off by placing a barbell behind your back resting it slightly against your quads with your palms facing backwards.2.) With your shoulders, raise the barbell so that it reaches your glutes and hold onto the position for a few seconds.3.) Return back to the starting position.4.) Repeat this exercise for as many repetitions as needed.'
    ),
    (
        'Barbell Bench Press',
        'Chest,Triceps,Shoulders',
        'Strength',
        'Barbell',
        'Bench press is a great exercise for building a powerful chest.The bench press is one of the power exercises, known to be very effective for building body mass. Learning how to do a proper bench press is well worth the effort.1.) Lie with your back flat on a bench with your feet firmly on the ground and the bar resting on the bench’s rack.2.) Slowly lift the bar off the rack and hold it above your chest as this will be the starting position.3.) Then lower the bar down until it is slightly above your chest, making sure that it doesn t touch or slam against your chest.4.) Hold this position briefly and make sure you have complete control of the bar, then raise it back up to the starting postion.3.) Place the bar on the rack and that will complete your set.Tips :1.) By changing the width of the grip on the bar will change the focus and targeting of the exercise. Using a medium grip is the most common grip on the bar which is slightly wider than shoulder-width that is typically marked on the bar.2.) Using a spotter while performing this exercise is essential to make sure that the bar doesn t drop onto your chest and a spotter can provide motivation to lift more weight.3.) The most important thing about the bench press exercise is using a weight that you can manage while maintaining proper form. Many individuals try to lift more weight than they can manage which results in injuring and incorrectly performing the exercise.'
    ),
    (
        'Barbell Bench Press (Close Grip)',
        'Triceps,Chest,',
        'Strength',
        'Barbell',
        'This exercise of the bench press is a variation where the individual uses a narrow grip to put pressure on the triceps.Steps :1.) Start off lying with your back flat on a bench with your feet flat on the floor in front of you.2.) Grab the bar with a narrow grip keeping your hands close enough so that your thumbs are able to touch.3.) Then lift the barbell off of the rack and hold it above your chest as this will be your starting position.4.) Lower the barbell towards your chest, stopping so that the bar is close to touching you and hold for a second.5.) Push the bar back up to the starting position and repeat for as many reps and sets as desired.Tips :1.) Prevent from bouncing the barbell off of your chest as that is performing the exercise incorrectly and could lead to injury.'
    ),
    (
        'Barbell Bench Press (Wide Grip)',
        'Chest,Shoulders,Triceps',
        'Strength',
        'Barbell',
        'The barbell wide grip bench press exercise is a great exercise for the pectoral muscles and uses a wider grip to focus upon the outer portion of the chest.1.) Lie flat on a bench with your feet flat on the floor.1.) Begin with your back flat on a bench with your feet flat on the floor in front of you and grabbing onto the barbell with a wider than shoulder-width grip as this will be your starting position.2.) Lift the bar up and off of the rack, bring it over your chest and slowly lower it until it is just above your body and you feel a stretch in your chest muscles.3.) Hold for a count then extend your arms upward and raise the bar straight up over your chest.4.) Repeat for as many reps and sets as desired.Tips : 1.) Keep your abs drawn in and your back flat on the bench throughout this exercise.2.) Refrain from bouncing the barbell off of your chest as this is improper form and can lead to injury.'
    ),
    (
        'Barbell Bench Squat',
        'Upper Legs,Glutes,Back',
        'Strength',
        'Barbell',
        'Steps :1.) To begin this exercise; start off with a weighted barbell rested upon your shoulders behind your neck.2.) Bend at your knees and start to sit back with your hips as you go down for a standard squat, keeping your back and chest straight out. 3.) Continue on with the squat until your hamstrings and glutes are rested upon the box and hold on for a few seconds.4.) Then using the force of your heels and lower legs, straighten out and extend your hips to get back to your starting position.5.) Repeat this exercise for as many repetitions as needed'
    ),
    (
        'Barbell Bent-Over Row',
        'Back,Biceps',
        'Strength',
        'Barbell',
        'Steps :1.) To begin this exercise, stand in front of a barbell with your feet shoulder-width apart and bend over until your back is parallel with the floor.2.) Grab the bar with a shoulder width grip then lift the bar up off of the ground and this will be your starting position.3.) Take the bar and raise it up towards you chest using a controlled motion and continue until the bar is almost touching your lower chest.4.) Hold this position for a few seconds, squeezing your back muscles and then lower the bar back to the starting position.Tips :1.) While performing this exercise keep your chin tucked and eyes looking down at the floor and your back straight.'
    ),
    (
        'Barbell Bent-Over Row (Reverse Grip)',
        'Back,Biceps,Shoulders',
        'Strength',
        'Barbell',
        'The Barbell Reverse Grip Bent Over Row is an excellent exercise for developing overall back strength.1.) Begin by keeping your knees slightly bent and your back straight.2.) Grab the barbell with a reverse (underhand) grip and pick up the barbell so it is at around shin level.3.) While keeping yourself bent and balanced, slowly pull the barbell up to your abs, and keeping your elbows tucked in at your sides.4.) Once you have reached the top of the exercise, hold for a count, squeezing your back and return back to the starting position.5.) Repeat for as many reps and sets as desired.Tips : 1.) It is important to keep your back straight when you perform this exercise and if your back starts to round out, bend your knees slightly to keep it straight.'
    ),
    (
        'Barbell Bicep Curl (Prone)',
        'Biceps,Forearms',
        'Strength',
        'Barbell',
        'The barbell lying high bench biceps curl exercise has you lie face down to isolate your biceps and build bigger arms.1.) Start by lying face down on a high bench with your head at one end and your toes pressed against the floor to support you.2.) Grab a barbell with an underhand grip (palms facing up) about 12 inches apart.3.) Extending your arms to the floor, curl your arms back towards your head in a slight arc, so your biceps touch your forearm.4.) Slowly return to the starting position.5.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Barbell Bicep Curl (Wide Grip)',
        'Biceps,Forearms',
        'Strength',
        'Barbell',
        'The barbell wide grip standing biceps curl exercise is a wide grip version of the bicep curl that targets the lateral (outer) portion of the bicep muscle.1.) Start by standing with your feet shoulder width apart, your knees slightly bent and your abs drawn in.2.) Grab a barbell with an underhand (palms up) grip as wide as you comfortably can and extend your arms fully against your thighs.3.) Keeping your elbows straight, raise the bar towards your chest till your forearms touch your chest, squeezing your bicep muscle.4.) Pause for moment and then return to the starting position.5.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Barbell Bicep Drag Curl',
        'Biceps,Forearms',
        'Strength',
        'Barbell EZ Curl Bar',
        '1.) To begin this exercise; take a barbell with palms facing forward with the barbell resting at your pelvis.2.) Then take the barbell and curl it towards your upper chest as in a way to “Drag” the bar up. 3.) Hold and squeeze the biceps tightly.4.) Return the barbell back down to the starting position keeping the barbell in contact with your body.5.) Repeat this exercise for as many repetitions as needed.'
    ),
    (
        'Barbell Bradford Rocky Press',
        'Shoulders,Triceps',
        'Strength',
        'Barbell',
        'Steps :1.) To begin this exercise; start off sitting on a straight up military press bench with a weighted barbell rested on your upper chest.2.) Keeping your palms facing out, push the barbell up in an overhead press above your head and hold for a few seconds.3.) Then lower the bar down behind the back of your head and hold for a few seconds.4.) Return back to the overhead position and then back to the starting position.5.) Repeat this exercise for as many repetitions as needed.'
    ),
    (
        'Barbell Bulgarian Split Squat',
        'Upper Legs,Glutes,',
        'Strength',
        'Barbell',
        'The barbell single-leg squat exercise is an advanced exercise that works on strengthening the muscles in hip and leg while improving core strength and coordination.1.) Start by placing a barbell on your back above your shoulders with a wide grip.2.) Place one foot behind you resting it on a bench.3.) Slowly lower down until you re about parallel to the floor with the involved leg. 4.) Slowly return to an upright position focusing on your hip and thigh.5.) Switch legs and repeat for as many reps and sets as desired.'
    ),
    (
        'Barbell Calf Raise',
        'Lower Legs',
        'Strength',
        'Barbell',
        'Steps :1.) Begin by setting up a barbell with the amount of weight that you would like to use for this exercise and rest the barbell across the top of your upper back.2.) Slowly lean forward and raise your heels up off of the floor, pushing up as high as possible squeezing your calves at the top of the movement.3.) Hold for a two count then return back to the starting position.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Barbell Cambered Row (Prone)',
        'Back,Biceps',
        'Strength',
        'Barbell',
        '1.) Start by placing a cambered or EZ bar underneath an exercise bench, then lay face down grabbing the bar with a palms down grip.2.) Slowly row the bar up towards your chest, keeping your elbows close to your body until you feel a tension on your lower back.3.) Hold this position for a count then return back to the start.4.) Repeat for as many reps and sets desired.'
    ),
    (
        'Barbell Clean',
        'Upper Legs,Shoulders,Lower Legs',
        'Olympic Weight Lifting',
        'Barbell',
        '1.) To begin this exercise; start off with a weighted barbell right in front of your shins using an overhand grip. 2.) Bend down at the knees with your back straight, chest out and head facing forward and pull up on the barbell with the driving force from your heels.3.) Extend out through your knees and hips in a jumping motion to push the bar upward. 4.) Most of the force should be driven through the initial momentum from the legs and hips with a slight pull from your arms.5.) When you are fully extended and upright, flex your arms with your elbows and pull yourself down allowing the barbell to roll up your forearms and rest on your palms and shoulder in a full squat position. 6.) Maintain a full squat position until you have full control of the barbell.7.) Then push yourself up with your heels into an upright position keeping your back straight and chest out.8.) Repeat this exercise for as many repetitions as needed'
    ),
    (
        'Barbell Clean and Jerk',
        'Shoulders,Glutes,Core',
        'Olympic Weight Lifting',
        'Barbell',
        '1.) To begin this exercise; start off with a weighted barbell in front of your feet and raise it slightly so that it is parallel with your shins. 2.) Lower your hips and bend your knees a bit while keeping your back straight so that the weight of the bar is rested upon your heels3.) Pull up on the bar so that it reaches the mid-thigh position then perform a jumping movement, which you extend your knees and hips allowing the bar to move upward. 4.) Keep the bar pressed up and rested against your palms and shoulders.5.) Then while in a full squat position push your torso upward thrusting with your hips, quads and heels keeping your knees bent slightly and straighten out your back.6.) With the barbell pressed up overhead, spread your legs out with one leg stretched out a bit forward and the other pushed back slightly maintaining the clean press overhead. 7.) Hold onto this position for a few seconds.8.) Return back to the starting position by letting the barbell roll down off of your shoulders and lightly bring it back down to the floor.9.) Repeat this exercise for as many repetitions as needed'
    ),
    (
        'Barbell Clean Deadlift',
        'Back,Glutes,Upper Legs',
        'Olympic Weight Lifting',
        'Barbell',
        '1.) To begin this exercise; start off with a weighted barbell right in front of your shins with an overhand grip. 2.) Bend down at the knees with your back straight, chest up, head facing forward and pull up on the barbell with the driving force from your heels.3.) As you lift the barbell up, keep your back straight and pull up.4.) When the barbell crosses your knees, lift up with your torso until the bar has reached your hips and your knees are fully extended.5.) Repeat this exercise for as many repetitions as needed'
    ),
    (
        'Barbell Clean From Blocks',
        'Upper Legs,Shoulders,Lower Legs',
        'Olympic Weight Lifting',
        'Barbell',
        '1.) To begin this exercise; start off with a weighted barbell rested on blocks right in front of your shins with a overhand grip. 2.) Bend down at the knees with your back straight, chest out, head facing forward and pull up on the barbell with the driving force from your heels.3.) Extend out through your knees and hips in a jumping motion to push the bar upward. 4.) Most of the force should be driven through the initial momentum from the legs and hips with a slight pull from your arms.5.) When you are full extended and upright, flex you arms with your elbows and pull yourself down allowing the barbell to roll up your forearms and rest on your palms and shoulder in a full squat position. 6.) Keep yourself in the full squat position until you have full control of the barbell.7.) Then push yourself up with your heels into an upright position keeping your back straight and chest out.8.) Repeat this exercise for as many repetitions as needed'
    ),
    (
        'Barbell Clean Pull',
        'Upper Legs,Back,Glutes',
        'Olympic Weight Lifting',
        'Barbell',
        '1.) To begin this exercise; start off with a weighted barbell right in front of your shins with an overhand grip. 2.) Bend down at the knees with your back straight, chest out and head facing forward and pull up on the barbell with the driving force from your heels.3.) As you lift the barbell up, keep your back straight and pull up.4.) When the barbell crosses your knees, lift up with your torso until the bar has reached your hips and your knees are fully extended.5.) Then use the extended motion to pull the barbell up and at chest level with your arms bending at shoulder level.6.) Repeat this exercise for as many repetitions as needed'
    ),
    (
        'Barbell Close Grip Press',
        'Triceps',
        'Strength',
        'Barbell',
        'Steps :1.) Start by sitting up straight on the end of a flat bench with feet in front of you, while holding a weighted barbell on your knees.2.) Elevate the bar overhead and this will be your starting position.3.) Slowly lower the bar behind your head, until you feel a stretch, squeeze your triceps, and hold for a count.4.) Return back to the starting position.5.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Barbell Concentration Curl',
        'Biceps,Forearms',
        'Strength',
        'Barbell',
        'Steps :1.) Begin by sitting on a flat bench, holding a weighted barbell in front of you, arms extended out and feet flat on the floor.2.) Hold the barbell with an underhand grip, palms facing up, then lean forward with your upper body so that your arms are touching your inner thighs.3.) Keep your legs tight against your arms throughout the exercise then slowly curl the bar up towards your shoulders, isolating the bicep, and hold for a count.4.) Return back to the starting position.5.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Barbell Concentration Curl (Close Grip)',
        'Biceps',
        'Strength',
        'Barbell',
        '1.) To begin this exercise; sit down on a flat bench at the very edge with a barbell.2.) Keeping your knees bent at all times, pick up the barbell, curl the weight up and forward while squeezing and tightening your biceps as you exhale. 3.) The only part of your body that should be moving are the forearms as they bring the barbell to shoulder level.4.) Hold the biceps in position for a few seconds then return back to the starting position as you inhale.5.) Repeat this exercise for as many repetitions as needed.'
    ),
    (
        'Barbell Curl',
        'Biceps',
        'Strength',
        'Barbell',
        'The barbell curl is a basic bicep exercise that helps increase the size of the muscles.Steps :1.) Start off standing up straight with your feet shoulder-width apart, keeping your knees slightly bent and abs drawn in tight.2.) Grab a barbell with a shoulder width underhand (palms up) grip, lowering your arms down to your thighs fully and bending slightly at your elbows as this will be your starting position.3.) Slowly raise the bar towards your upper chest, squeezing your muscles and isolating the biceps.4.) Hold this position for a count and then return back to the starting position.Tips :1.) Refrain from swinging your hips or back during this exercise.'
    ),
    (
        'Barbell Curl (Close Grip)',
        'Biceps',
        'Strength',
        'Barbell',
        'The close-grip standing barbell curl uses a barbell to help isolate the bicep during the curl.1.) Start by standing up straight with your feet shoulder width apart, keeping your knees slightly bent and abs tight.2.) Grab a barbell with an underhand grip and extend your arms against your thighs as this will be your starting position.3.) While keeping your elbows locked by your side, raise the bar up towards your chest. 4.) Hold this position for a count and return back to the starting position.'
    ),
    (
        'Barbell Curl Against an Incline',
        'Biceps',
        'Strength',
        'Barbell',
        'The barbell curls lying against an incline exercise uses an incline bench to help adjust your body s position to perform bicep curls.1.) Start by taking an incline bench and setting it to a 45-degree angle, then grabbing a barbell with a shoulder-width grip and lean forward against it with your feet resting on the floor for support.2.) Hang your arms down over the bench holding onto the barbell, keeping your elbows straight and raise the bar up towards your head, isolating the biceps.3.) Hold onto this position for a count then return back to the starting position.'
    ),
    (
        'Barbell Deadlift',
        'Back,Glutes,Upper Legs',
        'Strength',
        'Barbell',
        'The barbell deadlift is a classic bodybuilding exercise meant for putting on mass and building overall strength throughout the entire body.1.) Start by standing in front of a barbell with your feet shoulder-width apart.  2.) Pick up the barbell while keeping your arms extended straight down.  3.) Stand up straight with the barbell in your hands, and refrain from moving your arms.  4.) Bend back down at the knees with barbell.  5.) Repeat for the desired amount of reps.'
    ),
    (
        'Barbell Decline Bench Lunge',
        'Upper Legs,Glutes,Lower Legs',
        'Strength',
        'Barbell',
        'Steps :1.) Start by setting up a decline bench in front of you, placing your right foot on the bench, keeping your leg extended and holding a weighted barbell on your shoulder blades.2.) Then slowly, while keeping your balance, squat down so that you feel a stretch in your quads, holding for a count then return back up to the starting position.3.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Barbell Decline Bench Press',
        'Chest,Triceps',
        'Strength',
        'Barbell',
        'This version of the bench press exercise utilizes a decline bench so that the lower part of the chest is targeted.1.) Start off lying on a decline bench so that your head is lower than your feet.2.) Grab onto the barbell with an overhand shoulder-width grip and hold it directly above your chest as this will be your starting position.3.) Then slowly lower the bar until it is just above your chest, stop and hold for a second then return back to the starting position.4.) Repeat for as many reps and sets as desired.Tips : 1.) Concentrate on using your chest for this bench press. You should feel as if the lifting is coming from your elbows.1.) Make sure that your feet are flat on the floor and you are balanced so that the bar does not drop on your chest.2.) Use a weight that you are able to balance and manage.3.) When stopping the barbell on the downward motion, make sure that you stop the barbell slightly above your chest so that it doesn t bounce or touch your chest.'
    ),
    (
        'Barbell Decline Bench Press (Reverse Grip)',
        'Chest,Shoulders,Triceps',
        'Strength',
        'Barbell',
        'Steps :1.) Start by laying flat on your back on a decline bench, feet on the rested underneath the pads and hands holding dumbbells in a underhand reverse grip at the sides of your chest.2.) Slowly push the dumbbells straight up above your chest, squeezing your pecs and hold for a count.3.) Return back to the starting position.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Barbell Decline Bench Press (Wide Grip)',
        'Chest,Shoulders,Triceps',
        'Strength',
        'Barbell',
        'The barbell wide grip decline bench press is a great exercise to work the lower portion of the pectoral muscles and also uses a wider grip to focus upon the outer portion of the chest.Steps :1.) Start off lying on a decline bench with your head positioned lower than your feet and reach up grabbing the barbell with a wider than shoulder-width as this will be your starting position.2.) Slowly lift the barbell up off of the rack, bring it just over your chest and lower it until it is above the lower portion of your chest and you feel a stretch in your pectoral muscles.3.) Hold this position for a count then return back up to the start.4.) Repeat for as many reps and sets as desired.Tips : 1.) Keep your abs drawn in and your back flat on the bench throughout this exercise.2.) Refrain from bouncing the barbell off of your chest as this is improper form and can lead to injury.3.) Make sure the you are using a bench that you can maintain your balance through the exercise.'
    ),
    (
        'Barbell Decline Pullover',
        'Chest,Shoulders,Triceps',
        'Strength',
        'Barbell',
        'Steps :1.) Start by lying with your back flat on a decline bench, holding a weighted barbell above your chest and arms fully extended out in front of you.2.) Then slowly move the barbell back and down behind you so that your arms stay fully extended but the barbell is behind your head and body about to touch the floor.3.) Squeeze your shoulder and chest muscles on the way down and hold for a count.4.) Return the barbell back up to the starting position, keeping your arms fully extended.5.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Barbell Decline Pullover (Wide Grip)',
        'Chest,Shoulders,Triceps',
        'Strength',
        'Barbell',
        'The barbell wide grip decline pullover is an advanced exercise to target the pectoral muscles and build a wider and stronger chest..Steps :1.) Start by lying on a decline bench with your feet higher than your head.2.) Grab onto a barbell with an extra wide grip (hands near the plates) and then from your upper thighs, raise the barbell in an arc over your head towards the floor.3.) Continue until you feel a stretch in your chest muscles and then hold the position for a count.4.) Return back to the starting position and repeat for as many reps and sets as desired.Tips :1.) Squeeze the bar as though you were pushing both ends together as this will give an additional muscle contraction.2.) Do not go beyond a normal range of motion'
    ),
    (
        'Barbell Deep Squat',
        'Upper Legs,Glutes,Lower Legs',
        'Olympic Weight Lifting',
        'Barbell',
        'Steps :1.) Set up in a squat position with a barbell resting on your traps, keeping your chest up, head facing forward and your feet shoulder-width apart.2.) Slowly descend to the ground by bending your knees, without moving your hips backwards, and shifting them forward staying in position with your feet.3.) Keep your body as upright as possible and squat all the way down keeping the weight on the front of your heels until the back of your upper legs connect with the lower legs.4.) Hold for a count then drive your weight up as you return back to the starting position.5.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Barbell Deep Squat',
        'Upper Legs,Glutes,Lower Legs',
        'Strength',
        'Barbell',
        'Steps :1.) This is a variation of the regular squat where rather than squatting till your thighs are parallel with the floor, you squat down as low as you possibly can letting your glutes and hamstrings get more into the exercise.2.) Start off by setting up a weighted barbell with the amount of weight that you would like to perform for this exercise.3.) Then position the bar on your shoulder blades with an overhand shoulder width grip just as in a regular squat position.4.) Bend at your knees and slowly lower yourself towards the ground, squatting down as far as possible and squeezing your squads.5.) Hold for a count then return back up to the starting position.6.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Barbell Deep Squat',
        'Upper Legs,Glutes,Back',
        'Strength',
        'Barbell',
        '1.) To begin this exercise; start off with a weighted barbell rested upon your shoulders behind your neck.2.) Bend at your knees and start to sit back with your hips as you go down for a standard squat keeping your back and chest straight out. 3.) Continue on with the squat until your hamstrings are on your calves and hold on for a few seconds.4.) Then using the force of your heels and lower legs, straighten out and extend your hips to get back to your starting position.5.) Repeat this exercise for as many repetitions as needed'
    ),
    (
        'Barbell Drag Curl',
        'Biceps,Forearms',
        'Strength',
        'Barbell',
        'The barbell drag curl is a great exercise that blasts and targets the bicep muscles and even works out the forearms.1.) Start by standing with your feet shoulder-width apart, your knees slightly bent and your abs drawn in.2.) Grab the bar with a shoulder-width overhand grip (palms down) and extend your arms fully so they are against your thighs.3.) Slowly raise your arms, palms down, to touch your chest.4.) Return back to the starting position and repeat for as many reps and sets as desired.'
    ),
    (
        'Barbell Frankenstein Squat',
        'Shoulders,Lower Legs,Upper Legs',
        'Olympic Weight Lifting',
        'Barbell',
        'Steps :1.) To begin this exercise; start off by placing a barbell on the front of your shoulders. 2.) Keeping the barbell still and in place, extend your arms out in front of you so that they are parallel with the floor and at shoulder level.3.) Bend at the knees and lower your hips down towards the ground, keeping your chest and back straight along with the barbell secure on your shoulders. 4.) Continue in a basic squat motion until your upper legs come in contact with your calves.5.) Return back to the starting position slowly with barbell in place.6.) Repeat this exercise for as many repetitions as needed.'
    ),
    (
        'Barbell Front Raise',
        'Shoulders,,',
        'Strength',
        'Barbell',
        'When performing this exercise, you are working your front shoulder muscles.1.) Start off grabbing a barbell with an overhand grip and keeping your abs tight.2.) Keeping your arms relatively straight, slightly bend your elbows, bend your knees and raise the barbell to shoulder level.3.) Once at shoulder level, hold for a second then return back to the starting position in a controlled motion.Tips : 1.) During this exercise it is important to keep your abs tight to support your back muscles and do not use your back to help you lift.'
    ),
    (
        'Barbell Front Raise Pullover',
        'Chest,Triceps,Shoulders',
        'Strength',
        'Barbell',
        'The barbell front raise and pullover exercise is a combination exercise that works the chest, shoulder and arm muscles.1.) Start off lying on a flat bench, grabbing a barbell using a medium grip and placing the bar on your upper thighs while keeping your arms locked straight.2.) Slowly raise your arms up and over, in an arc motion, behind your head (as if you were performing a reverse pullover).3.) Hold this position for a count, feeling a stretch in your muscles, and return back to the starting position on your thighs.'
    ),
    (
        'Barbell Front Squat',
        'Upper Legs,Glutes,Back',
        'Strength',
        'Barbell',
        '1.) To begin this exercise; start off with a weighted barbell rested upon your shoulders in front of your face with your arms crossed holding onto the bar.2.) Bend at your knees and start to sit back with your hips as you go down for a standard squat keeping your back and chest straight out. 3.) Continue on with the squat until your hamstrings and glutes are rested upon the each other and hold on for a few seconds.4.) Then using the force of your heels and lower legs, straighten out and extend your hips to get back to your starting position.5.) Repeat this exercise for as many repetitions as needed'
    ),
    (
        'Barbell Front Squat',
        'Upper Legs,Lower Legs,Glutes',
        'Strength',
        'Barbell',
        'The barbell front squat exercise works the same muscles as the rear squat exercise without placing the weight of the bar on your shoulders and helps strengthens overall body strength.1.) Start by placing the barbell on your upper chest and resting it across your front deltoids and holding it with your arms crossed securely.2.) Once in position, slowly squat down towards the floor until your upper thighs are parallel to the ground and hold the position for a count.3.) Slowly return back up to the starting position and repeat for as many reps and sets as desired.Tips :1.) Practice the squat without any weight to allow yourself to become comfortable with the movements.'
    ),
    (
        'Barbell Glute Bridge',
        'Glutes,Lower Legs,Upper Legs',
        'Powerlifting',
        'Barbell',
        '1.) To start this exercise; begin with your back flat on the floor and a weighted barbell above your legs. 2.) Roll the bar so that it is resting above the top of your thighs at the increase in the hip.3.) With the bar upon your hips, extend upward with your back and heels supporting the weight of the bar.4.) Push the bar up as high a possible then return back to the starting position.5.) Repeat this exercise for as many repetitions as needed.'
    ),
    (
        'Barbell Good Morning',
        'Back,Glutes,',
        'Strength',
        'Barbell',
        'The good morning exercise is an exercise that helps strengthen your lower back while also working the hamstrings and glutes. Steps :1.) Start off with resting a barbell just behind your shoulders and standing up straight with your feet shoulder width apart and abs tight to support your back.2.) Once in position start leaning forward, lowering your torso until it is parallel to the ground and knees slightly bent.3.) When your body is parallel to the ground, stop and hold the position for a count while looking forward then return back to the starting position and repeat for as many reps and sets as desired.Tips :1.) Before you begin this exercise, make sure that you have the barbell on the squat rack so that it is easier to get into the starting position.'
    ),
    (
        'Barbell Hack Squat',
        'Upper Legs,Glutes',
        'Strength',
        'Barbell',
        'The barbell hack squat exercise is a variation of the basic squat that focuses more on strengthening and building the quad muscles1.) Start by placing a barbell on the floor just behind your legs, standing with your feet shoulder width apart and your toes pointing forward2.) With your feet firmly placed on the floor reach down and grasp the barbell from behind with and overhand grip.3.) Lift the barbell by extending your hips and knees, be careful not to lock your knees.4.) Squat down until your thighs are parallel to the floor and hold the position for a count.5.) Slowly raise yourself up to starting position.6.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Barbell Hang Clean',
        'Upper Legs,Back,Shoulders',
        'Olympic Weight Lifting',
        'Barbell',
        'Steps :1.) Start by standing in front of a barbell with your feet shoulder width apart and gripping the bar with a double overhand shoulder width grip.2.) Bring the bar to about mid thigh position, keeping your back straight, then extend through your hips and knees forcefully driving the weight upward and shrugging your shoulders to your ears at the same time.3.) After performing this motion, flex your elbows up and out bringing your body down and the barbell up towards your shoulders.4.) You will have the bar positioned in a front squat position with your elbows pointing out, securing the barbell in place.5.) Once in position lower your body to a bottom squat position to ease the tension and recovery process of the previous motion.6.) Keep your knees bent and torso upright to help support the weight.7.) Slowly and safely lower the weight back down to the starting position and repeat for as many reps and sets as desired.'
    ),
    (
        'Barbell Hang Clean Below the Knees',
        'Upper Legs,Back,Shoulders',
        'Olympic Weight Lifting',
        'Barbell',
        'Steps :1.) Start by standing in front of a barbell with your feet shoulder width apart and gripping the bar with a double overhand shoulder width grip.2.) Lift the bar up so that it is slightly below your knees, keeping your back straight, then extend through your hips and knees forcefully driving the weight upward and shrugging your shoulders to your ears at the same time.3.) After performing this motion, flex your elbows up and out bringing your body down and the barbell up towards your shoulders.4.) You will have the bar positioned in a front squat position with your elbows pointing out securing the barbell in place.5.) Once in position lower your body to a bottom squat position to ease the tension and recovery process of the previous motion.6.) Keep your knees bent and torso upright to help support the weight.7.) Slowly and safely lower the weight back down to the starting position and repeat for as many reps and sets as desired.'
    ),
    (
        'Barbell Hang Snatch',
        'Upper Legs,Back,Shoulders',
        'Olympic Weight Lifting',
        'Barbell',
        'Steps :1.) Start by standing in front of a barbell with your feet shoulder width apart and gripping the bar with a double overhand shoulder width grip.2.) Bring the bar to about mid thigh level, keeping your back straight, then extend through your hips and knees forcefully driving the weight upward and shrugging your shoulders to your ears at the same time.3.) Moving your feet into the receiving position, pull yourself below the bar as you elevate it overhead making sure that you receive the bar as low as possible and extend your arms up fully over your body.4.) Make sure that you have a balanced standing position and hold for a count, then slowly and under control lower the bar back to the ground.5.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Barbell Hang Snatch Below the Knees',
        'Upper Legs,Back,Shoulders',
        'Olympic Weight Lifting',
        'Barbell',
        'Steps :1.) Start by standing in front of a barbell with your feet shoulder width apart and gripping the bar with a double overhand shoulder width grip.2.) Bring the bar to about lower knee level, keeping your back straight, then extend through your hips and knees forcefully driving the weight upward and shrugging your shoulders to your ears at the same time.3.) Moving your feet into the receiving position, pull yourself below the bar as you elevate it overhead making sure that you receive the bar as low as possible and extend your arms up fully over your body.4.) Make sure that you have a balanced standing position and hold for a count, then slowly and under control lower the bar back to the ground.5.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Barbell High Front Raise',
        'Shoulders',
        'Strength',
        'Barbell',
        '1.) Start by standing up straight and  setting up an EZ bar with the weight that you would like to perform with your feet shoulder width apart and keeping the weight at waist level.2.) Slowly elevate your arms up and above your head, squeezing your shoulders in the process and hold for a count.3.) Return back to the starting position.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Barbell High Snatch',
        'Upper Legs,Shoulders,Triceps',
        'Olympic Weight Lifting',
        'Barbell',
        'Steps :1.) Start by standing in front of a barbell, feet shoulder width apart with an overhand grip position. 2.) Bring the barbell up to mid thigh position with a wide grip.3.) Then pull up the barbell by driving up through your heels and raising the bar, quickly executing a second pull by extending through your hips and knees bringing the bar up as fast as possible.4.) Continue to raise the bar up and overhead without re-bending your knees and hold for a count.5.) Slowly return the bar back down to the starting position.6.) Repeat for as many reps and sets desired.'
    ),
    (
        'Barbell Hip Thrust',
        'Glutes,Lower Legs,Upper Legs',
        'Powerlifting',
        'Barbell',
        '1.) To begin this exercise; start off with your body seated on the ground with your back rested upon a bench. 2.) Keep a weighted barbell above your hips as this will be your starting position.3.) Lean your back against the bench and rest your shoulders on the top of it.4.) Then push your hips up vertically and keep the bar rested in your pelvis region, your back and heels should support the weight of the bar.5.) Repeat this exercise for as many repetitions as needed.'
    ),
    (
        'Barbell Incline Bench Press',
        'Chest,Triceps,Shoulders',
        'Strength',
        'Barbell',
        'The barbell incline bench press is a variation of the bench press exercise that targets your upper chest by using an incline bench with an incline angle.Steps :1.) Start off setting up your incline bench to a 45-degree angle or use a pre-designed incline bench press bench.2.) Then lie flat on your back on the bench with your feet firmly planted on the floor gripping the barbell with a slightly wider than shoulder-width apart.3.) Lift the bar off of the rack and hold it right above your chest as this will be your starting position.4.) Slowly lower the bar until it almost touches you and you feel a stretch in your chest, and hold the position for a count.5.) Return back up to the starting position and repeat for as many reps and sets as desired.Tips :1.) Do not lock your elbows when you are in the starting position and make sure that you use a slow controlled motion without touching your chest while performing this exercise.'
    ),
    (
        'Barbell Incline Bench Press (Close Grip)',
        'Triceps,Chest,Shoulders',
        'Strength',
        'Barbell',
        'Steps :1.) Start by laying back on an incline bench press with your feet flat on the floor in front of you, grabbing the barbell with a close overhand grip.2.) Remove the barbell from the rack and elevate it over your chest. 3.) Keep your elbows tucked in at your sides and lower the barbell down to your middle chest without touching.4.) Squeeze your triceps and hold for a count.5.) Return back to the starting position.6.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Barbell Incline Bench Press (Reverse Grip)',
        'Chest,Shoulders,Triceps',
        'Strength',
        'Barbell',
        '1.) Start by laying flat on your back on an incline bench, feet on the floor and hands holding dumbbells in a underhand reverse grip at the sides of your chest.2.) Slowly push the dumbbells straight up above your chest, squeezing your pecs and hold for a count.3.) Return back to the starting position.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Barbell Incline Bench Pull',
        'Back,Biceps',
        'Strength',
        'Bench',
        '1.) Start by grabbing dumbbells or a barbell and lie face down on a 45 degree incline bench.2.) Let your arms hang down by your sides so that they are down towards the floor while using a palms down grip to lift either the barbell or dumbbells toward your face.3.) Once the dumbbells are near your face, hold for a count, then return back down slowly to the starting position.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Barbell Incline Bench Row',
        'Back,Biceps,Shoulders',
        'Strength',
        'Barbell',
        '1.) Start by setting up a weighted barbell in front of an incline bench, laying down in a prone position with your body kept straight and your legs extend with toes on the floor in behind you.2.) Reach down with a shoulder width grip and grab the bar elevating it off of the ground slightly.3.) Slowly raise the bar up towards your chest, squeezing your back, and then hold for a count.4.) Return the barbell back to the starting position.5.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Barbell Incline Row (Reverse Grip)',
        'Back,Biceps,Shoulders',
        'Strength',
        'Barbell',
        '1.) Start by setting up a weighted barbell in front of an incline bench, laying down in a prone position with your body kept straight and your legs extend with toes on the floor in behind you.2.) Reach down with a shoulder width reverse grip and grab the bar elevating it off of the ground slightly.3.) Slowly raise the bar up towards your chest, squeezing your back, and then hold for a count.4.) Return the barbell back to the starting position.5.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Barbell Incline Shoulder Raise',
        'Shoulders,Shoulders',
        'Strength',
        'Barbell Bench',
        '1.) To begin this exercise; start off with lying flat back on an incline bench with a medium width grip upon the barbell. 2.) Take the bar off from the rack and hold it straight over your head with arms straight.3.) With the bar above your head, raise the shoulders off from the bench and exhale.4.) Return the bar back to the starting position and inhale.5.) Repeat this exercise for as many repetitions as needed.'
    ),
    (
        'Barbell Inverted Row',
        'Back,Biceps,Shoulders',
        'Strength',
        'Barbell',
        'Steps :1.) Start by setting up a a bar on a power rack or smith machine and then position your body underneath keeping your body straight and legs extended out in front of you.2.) Grab the bar with a shoulder width grip and then slowly pull yourself up to the bar as far as possible, bringing yourself to up around chest level.3.) Hold for a count while squeezing your back muscles and then return back to the starting position.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Barbell Jefferson Squat',
        'Upper Legs,Glutes',
        'Strength',
        'Barbell',
        'The barbell jefferson squat is a rarely used exercise but it is one of the best to help build and shape the inner thighs.Steps :1.) Start off by placing a barbell between your legs so it is perpendicular to your feet.2.) Grasp the barbell with one hand in front of you and one hand behind you with an overhand grip.3.) Squat down so your thighs are parallel to the floor slowly lift the weight up between your legs as you stand.4.) Slowly return to a starting position just above the floor.5.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Barbell Jerk',
        'Shoulders,Triceps,Glutes',
        'Olympic Weight Lifting',
        'Barbell',
        'Steps :1.) To begin this exercise; start off bringing yourself up as you would as in a normal jerk by standing up straight with the weighted barbell resting upon your shoulders and palms.2.) Dip your knees a bit and use your momentum to overhead press the barbell above your head.3.) Return back to the starting position4.) Repeat this exercise for as many repetitions as needed'
    ),
    (
        'Barbell Jerk Dip Squat',
        'Upper Legs,Core',
        'Olympic Weight Lifting',
        'Barbell',
        'Steps :1.) Start with a barbell racked upon your shoulders in a front squat or jerk position, using your shoulders to create a resting shelf and bar lightly touching your throat.2.) While keeping your torso vertical, dip slightly by flexing in your knees allowing them to move forward without your hips moving.3.) Then forcefully push through your feet to return the barbell to the starting position.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Barbell JM Press',
        'Triceps,Shoulders,Chest',
        'Strength',
        'Barbell',
        'Steps :1.) To begin this exercise; start off placing your back flat upon a bench and position yourself just as if you were to perform a close grip bench press. 2.) The most important part is to make sure that the bar is above the upper part of your chest.3.) The lower the bar down towards your chest just as if you were performing a lying triceps extension. 4.) Then use your triceps to push the bar back up into position.5.) Repeat this exercise for as many repetitions as needed.'
    ),
    (
        'Barbell Kneeling Jump Squat',
        'Glutes,Lower Legs,Upper Legs',
        'Olympic Weight Lifting',
        'Barbell',
        '1.) To begin this exercise; start off in a kneeling position on the floor with a weighted barbell rested upon your shoulders.2.) Lean back with your pelvis and let your butt touch your feet then explode forward and up with your hips with enough power that allows you to lift your feet up off of the floor and land flat.3.) Then push your body up into a full standing position.4.) Repeat this exercise for as many repetitions as needed.Tips :1.) Make sure that you are doing the exercise with as much weight as you are able to handle.'
    ),
    (
        'Barbell Kneeling Squat',
        'Glutes,Lower Legs,Upper Legs',
        'Powerlifting',
        'Barbell',
        '1.) To begin this exercise; start off in a kneeling position with a weighted barbell upon your shoulders.2.) Lean back with your pelvis and touch your calves with your glutes and then return back to the starting position.3.) Repeat this exercise for as many repetitions as needed.'
    ),
    (
        'Barbell Kneeling Wrist Curl (Palms Down)',
        'Forearms',
        'Strength',
        'Barbell',
        '1.) Start by picking up a barbell while kneeling over a bench.2.) With your palms facing downwards flex each forearm by lifting and lowering the barbell with only your wrist.3.) Exhale while raising your wrist.  4.) Inhale while lowering your wrist.  5.) Repeat for the desired amount of reps.'
    ),
    (
        'Barbell Kneeling Wrist Curl (Palms Up)',
        'Forearms',
        'Strength',
        'Barbell',
        '1.) Start by picking up a barbell while kneeling over a bench.2.) With your palms facing upwards, flex each forearm by lifting and lowering the barbell with only your wrist.3.) Exhale while raising your wrist.4.) Inhale while lowering your wrist.  5.) Repeat for the desired amount of reps and sets.'
    ),
    (
        'Barbell Lateral Lunge',
        'Glutes,Upper Legs',
        'Strength',
        'Barbell',
        'Steps :1.) Start by standing up straight with your feet about shoulder width apart, holding a barbell across your upper back with hands wider than your shoulders.2.) Then take a short lateral step in one direction, sitting back while bending at one knee until you feel a stretch in your thighs.3.) Hold onto this position for a count then return back up to the starting position.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Barbell Lunge',
        'Upper Legs,Lower Legs,Glutes',
        'Strength',
        'Barbell',
        'The barbell lunge exercise is a classic leg and lower body exercise that helps strengthen leg muscles and build overall strength.1.) Start off by placing a weighted barbell across your upper back, using a slightly wider shoulder-width grip, keeping your feet about 8 inches apart and toes facing forward.2.) Once in position, take a step forward (about 2 to 3 feet), making sure that you keep your abs tight and your upper body straight, and lower your back knee towards the floor as if you were kneeling.3.) As you continue down towards the floor, keep your other knee bent at a 90 degree angle while making sure that your back knee does not touch the ground.4.) Once in the final position and you feel a stretch in your muscles, hold for a count then return back to the starting position.Tips :1.) Do not put the pressure of your body on your knee during this exercise.2.) The knee you are leaning forward on should not move beyond the toe of this foot.'
    ),
    (
        'Barbell Military Press',
        'Shoulders,Triceps',
        'Strength',
        'Barbell',
        '1.) To begin this exercise; start off by taking a weighted barbell and have it pressed up against your chest with your palms facing outward.2.) With the barbell in position, lift it above your head with locked arms and hold for a few seconds squeezing your back and shoulders tightly.3.) Return back to the starting position.4.) Repeat this exercise for as many repetitions as needed.'
    ),
    (
        'Barbell Military Press (Seated)',
        'Shoulders',
        'Strength',
        'Barbell',
        'Steps :1.) Begin by sitting straight up on a bench gripping a barbell overhand, keeping elbows pointed down and chest high.2.) Slowly push the bar straight up over your head until your arms are fully extended, then return back to the starting position behind the neck.3.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Barbell Neck Press',
        'Chest,Biceps',
        'Strength',
        'Barbell',
        'The barbell neck press exercise is an advanced exercise for the chest that has the individual lower the barbell over your neck, not your chest.Steps :1.) Start off lying on a flat bench with your feet planted firmly on the floor, grabbing the barbell with a wider than shoulder-width grip apart.2.) Raise the barbell above your body and over your neck as this will be your starting position.3.) Slowly lower the bar down so that it just about touches your chest (but doesn t fully touch) and you feel a stretch in your chest muscles.4.) Hold this position for a count, then slowly raise the bar back up until your arms are fully extended out and your elbows are locked.5.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Barbell Neck Press',
        'Chest,Shoulders,Triceps',
        'Strength',
        'Barbell',
        'Steps :1.) Start by laying with your back on a flat bench using a medium grip on the barbell above you.2.) Slowly lift the bar over your neck with your arms locked then come down until the bar is on your neck.3.) Hold this position for a count then return back to the starting position squeezing with your chest as you push up.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Barbell One-Arm Bicep Curl',
        'Biceps,Forearms',
        'Strength',
        'Barbell',
        'The one arm bicep curl with an olympic bar exercise is an advanced workout used for building stability and strength in the bicep muscles.1.) Start by standing with your feet shoulder width apart and your knees slightly bent.2.) Grab an olympic bar (empty weight bar) in the middle with one hand so that the bar is equally balanced, keeping your free hand at your side for support.3.) Curl the bar up so your forearm touches your bicep, squeezing and isolating the muscle.4.) Slowly lower the bar and change arms.5.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Barbell One-Arm Floor Press',
        'Chest,Shoulders,Triceps',
        'Strength',
        'Barbell',
        'The one arm floor press exercise is a good exercise to build strength and coordination needed for weight training and is best done with a partner.Steps :1.) Start by lying flat on your back with your knees slightly bent and keeping your feet planted firmly on the floor.2.) Next have your partner stand above you and hand you the bar so that you are holding it in one hand.3.) Slowly lower the barbell towards the floor so that your bicep is parallel to the floor and hold for a count.4.) Return back up to the starting position and repeat for as many reps and sets as desired.5.) Switch arms and repeat.'
    ),
    (
        'Barbell One-Arm Row',
        'Back,Shoulders,Biceps',
        'Strength',
        'Barbell',
        '1.) Start off with your knees slightly bent and keeping the barbell straight between your legs.2.) Take the barbell with one arm just behind the plates and pull up straight using your elbow until it touches your chest. 3.) Tightly contract your back muscles as the barbell is being lifted and hold in position for a few seconds, then return back to the starting point.4.) Repeat this exercise for as many repetitions as needed.'
    ),
    (
        'Barbell One-Arm Row',
        'Back',
        'Strength',
        'Barbell',
        'Steps :1.) Begin by grabbing a barbell with an underhand grip, about shoulder width apart and bending over at around 60-degrees so that your spine is a bit lowered towards the ground.2.) Slowly pull the barbell straight back and towards the chest with one arm, maintaining a still position. 3.) Hold as you reach your chest then return back to the starting position.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Barbell One-Arm Side Deadlift',
        'Upper Legs,Core,Glutes',
        'Strength',
        'Barbell',
        'The barbell one arm side deadlift is an advanced exercise that works most of the muscles in the body and helps develop overall strength.Steps :1.) Start by standing beside a barbell placed on the floor and grabbing the bar with an overhand grip in the center.2.) Crouching down as if your were performing a squat, bend down so your thighs are parallel with the floor.3.) Extend your legs slowly as you straighten your body up, drawing in your abs as you rise.Tips : 1.) Perform this exercise with an empty bar to become familiar with the movement before adding weights.'
    ),
    (
        'Barbell One-Arm Snatch',
        'Upper Legs,Shoulders,Back',
        'Strength',
        'Barbell',
        'The one-arm snatch exercise is an advanced workout that targets most of the muscles of the body and helps improve overall strength.1.) Start off standing with your feet shoulder width apart, and a slight bend in your knees.2.) Grasp the bar with an overhead grip.3.) Starting with the barbell held slightly above the knees, lift the weight up over your head, then back to shoulder height and finally back to starting position between near your knees.'
    ),
    (
        'Barbell Overhead Front Raise',
        'Shoulders',
        'Strength',
        'Barbell',
        '1.) To begin this exercise; start off with a weighted barbell rested in front of your thighs with your palms facing down.2.) Then lift the barbell up until it is overhead above your body and hold onto this position for a few seconds.3.) Return back to the starting position.4.) Repeat this exercise for as many repetitions as needed.'
    ),
    (
        'Barbell Overhead Squat',
        'Upper Legs,Core,Lower Legs',
        'Olympic Weight Lifting',
        'Barbell',
        'The overhead squat exercise is a version of the squat exercise in which you hold the bar in an overhead grip position as you perform this workout.Steps :1.) Start by standing up straight with your feet a bit wider than shoulder-width apart, grabbing a barbell with a wide side snatch grip with your arms and elbows fully extended.2.) While keeping the bar overhead, bend at your knees and lower your body towards the ground until your thighs are parallel with the floor.3.) Hold the position for a count then return back up to the starting position.4.) Repeat for as many reps and sets as desired.Tips : 1.) Keep your feet firmly planted on the floor throughout this exercise.'
    ),
    (
        'Barbell Overhead Tricep Extension',
        'Triceps',
        'Strength',
        'Barbell',
        'The barbell standing overhead tricep extension is a double arm barbell version of the behind the neck triceps exercise that targets the tricep muscle.1.) Start by standing with your feet shoulder-width apart, your back straight and your abs drawn in.2.) Hold a barbell or EZ Curl bar about 6-8 inches apart with your palms facing up.3.) Raise the bar over your head and slowly lower the bar in an arc behind your head, towards your back and hold for a count.4.) Slowly bring the bar back up to the starting position.5.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Barbell Pin Press',
        'Triceps,Chest,Forearms',
        'Powerlifting',
        'Barbell',
        'Steps :1.) Start by setting up a flat bench between a power rack, setting the pins to about chest level and place the bar onto the pins.2.) Lay flat on your back on the bench with the bar directly above your chest, then tuck your feet underneath you, arch your back and then drive the bar up with as much force as possible, feeling a stretch within your triceps.3.) Hold the bar at the peak position for a count then return back to the starting position.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Barbell Pin-Off Good Morning',
        'Upper Legs',
        'Powerlifting',
        'Barbell',
        'Steps :1.) Start by placing a barbell on a rack at about stomach level, then bend underneath the bar placing it on your back just as in a power squat position.2.) Stand straight up with the barbell rested upon the rear of your shoulders then slowly lower your body back down towards the floor so that your back is parallel with the ground and touch the rack with the barbell.3.) Hold for a count and feel a stretch in your quads, then return back to the starting position.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Barbell Power Clean from Blocks',
        'Upper Legs,Back,Shoulders',
        'Olympic Weight Lifting',
        'Barbell',
        'Steps :1.) Begin with a barbell resting on two boxes, positioned at your knee level, with your feet at shoulder-width distance and gripping with a double overhand grip.2.) Bring the bar to about mid thigh position, keeping your back straight, then extend through your hips and knees forcefully driving the weight upward and shrugging your shoulders to your ears at the same time.3.) After performing this motion, flex your elbows up and out bringing your body down and the barbell up towards your shoulders.4.) You will have the bar positioned in a front squat position with your elbows pointing out securing the barbell in place.5.) Once in position lower your body to a bottom squat position to ease the tension and recovery process of the previous motion.6.) Keep your knees bent and torso upright to help support the weight.7.) Slowly and safely lower the weight back down to the starting position and repeat for as many reps and sets as desired.'
    ),
    (
        'Barbell Power Jerk',
        'Upper Legs,Shoulders,Triceps',
        'Olympic Weight Lifting',
        'Barbell',
        'Steps :1.) Start off with a weighted barbell racked on your front shoulders, in a front squat position, with your knees slightly bent and dipping your body a bit so that your feet are directly under your hips.2.) Push up through your heels, creating as much force as possible, and as your feet leave the floor place them in a receiving position as quickly as possible.3.) Elevate the bar up and over your head, keeping a wide stance and your legs still slightly bent to absorb the shifting of the weight.4.) Lock your arms overhead with the barbell in place and stand in an upright position.5.) Hold this position for a count then return back to the start, slowly lowering the weight down in a controlled motion.6.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Barbell Power Snatch',
        'Upper Legs,Back,Shoulders',
        'Olympic Weight Lifting',
        'Barbell',
        'Steps :1.) Start by standing in front of a barbell with your feet shoulder width apart and gripping the bar with a double overhand shoulder width grip.2.) Bring the bar to about mid thigh level, keeping your back straight, then extend through your hips and knees forcefully driving the weight upward and shrugging your shoulders to your ears at the same time.3.) Moving your feet into the receiving position, pull yourself below the bar as you elevate it overhead, making sure that you receive the bar as low as possible and extend your arms up fully over your body.4.) Make sure that you have a balanced standing position and hold for a count, then slowly and under control lower the bar back to the ground.5.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Barbell Power Snatch From Blocks',
        'Upper Legs,Back,Shoulders',
        'Olympic Weight Lifting',
        'Barbell',
        'Steps :1.) Start by standing in front of a barbell that is rested upon boxes, around knee level, with your feet shoulder width apart and gripping the bar with a double overhand shoulder width grip.2.) Bring the bar to about mid thigh level, keeping your back straight, then extend through your hips and knees forcefully driving the weight upward and shrugging your shoulders to your ears at the same time.3.) Moving your feet into the receiving position, pull yourself below the bar as you elevate it overhead making sure that you receive the bar as low as possible and extend your arms up fully over your body.4.) Make sure that you have a balanced standing position and hold for a count, then slowly and under control lower the bar back to the ground.5.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Barbell Preacher Curl',
        'Biceps',
        'Strength',
        'Barbell',
        'The preacher curl exercise uses a special bench to help support the triceps and isolate the biceps to build bigger arms.Steps :1.) Start off by adjusting the seat of a preacher bench so that your arms are level with the top of the bench.2.) Grab onto a bicep curl bar with an underhand (palms up) grip, keeping your arms shoulder-width apart, resting them against the bench, and extending them fully.3.) While keeping your arms on the bench, slowly curl the bar up towards your head, isolating the bicep and squeezing the muscles.4.) Hold for a count and then return back to the starting position.Tips1.) Perform this exercise in a slow manner to attain the best results.'
    ),
    (
        'Barbell Preacher Curl (Overhand)',
        'Forearms',
        'Strength',
        'Barbell',
        '1.) Sit on preacher bench placing back of arms on pad. 2.) Grasp curl bar with a shoulder-width overhand grip.3.) Raise bar until forearms are vertical.4.) Lower barbell until arm is fully extended. 5.) Repeat for the desired amount of reps.'
    ),
    (
        'Barbell Press on Stability Ball',
        'Shoulders,Triceps',
        'Strength',
        'Barbell',
        'Steps :1.) Start by sitting upright on an exercise ball with your feet in front of you and a weighted barbell rested upon your collarbone held in a shoulder width overhand grip.2.) Slowly push the bar upward until your arms are fully extended above your head, squeezing your shoulders and hold for a count.3.) Return back to the starting position.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Barbell Press Sit-Up',
        'Core',
        'Strength',
        'Barbell',
        '1.) Lie down on a bench with a decline.  2.) Hold a barbell at your chest.3.) Do a sit up and as you rise up push the bar to an overhead position.4.) Repeat for the desired amount of reps.'
    ),
    (
        'Barbell Pullover',
        'Back,Shoulders,Chest',
        'Strength',
        'Barbell',
        '1.) To begin this exercise; start off by lying on your back on a flat bench holding a weighted barbell above your chest with your arms slightly bent.2.) Keeping your arms bent, slowly lower your arms behind your head until you feel a stretch on your chest then hold onto that position for a few seconds.3.) Then return the barbell back to the starting position.4.) Repeat this exercise for as many repetitions as needed.'
    ),
    (
        'Barbell Pullover and Press',
        'Chest,Shoulders,Triceps',
        'Strength',
        'Barbell',
        'Steps :1.) Start by setting up a flat bench horizontally and laying down with your back flat in the middle of the bench, holding a weighted barbell against your waist.2.) Slowly elevate the barbell towards the ceiling and then lower it behind the back of your head as far as possible, feeling a stretch in your chest and then  hold for a count.3.) Return the bar back over your chest then lower it so that it is almost touching your body then push it back up.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Barbell Push Press',
        'Shoulders,Triceps,Upper Legs',
        'Olympic Weight Lifting',
        'Barbell',
        '1.) To begin this exercise; start off with a power clean to get the weighted barbell from the floor to your shoulders.2.) With the barbell rested on your palms and shoulder, bend your knees slightly and explode upward using your upper legs to overhead press, from the shoulders, the barbell above your head.3.) Lower the bar slowly to your shoulders bending your knees until the barbell reaches the starting point.4.) Repeat this exercise for as many repetitions as needed.'
    ),
    (
        'Barbell Push Press Behind the Neck',
        'Shoulders,Triceps,Upper Legs',
        'Olympic Weight Lifting',
        'Barbell',
        '1.) To begin this exercise; start off with a weighted barbell rested upon your shoulders behind your neck.2.) Bend your knees slightly and explode upward using your upper legs to overhead press the barbell above your head.3.) Lower the bar slowly back down to your shoulders.4.) Repeat this exercise for as many repetitions as needed.'
    ),
    (
        'Barbell Rack Delivery',
        'Shoulders,Forearms',
        'Olympic Weight Lifting',
        'Barbell',
        '1.) To begin this exercise; start off holding a weighted barbell palms down parallel with your torso.2.) Then with a thrust of motion rotate the elbows around the bar pushing it up towards your shoulders with assistance from your forearms.3.) Keep the bar as close to the body as possible as you perform this movement and make sure that you use your shoulders as a resting spot for the barbell.4.) Return the barbell down slowly to its resting position at the torso.5.) Repeat this exercise for as many repetitions as needed.'
    ),
    (
        'Barbell Rack Pull',
        'Back,Forearms,Glutes',
        'Strength',
        'Barbell',
        '1.) Start by setting up a power rack with a barbell rested upon pins just below your knees and then position yourself right against the bar.2.) Bend slightly in the knees just as in a deadlift position and while keeping your head looking forward, extend upward through your hips pulling the bar up until you lock with your knees.3.) Straighten out, hold for a count then return back to the starting position.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Barbell Rear Delt Row',
        'Shoulders,Biceps,Back',
        'Strength',
        'Barbell',
        '1.) To begin this exercise; start off by placing a weighted barbell in front of your legs bending over slightly with your glutes extended out.2.) Let your arms hang down and grab the barbell, lifting slightly so that the bar is rested around your shins.3.) Pull the barbell up towards your chest keeping your body still during the entire movement. 4.) As you reach your chest squeeze your back and your deltoids tightly holding on for a few seconds.5.) Return back to the starting position.6.) Repeat this exercise for as many repetitions as needed'
    ),
    (
        'Barbell Rear Delt Row to Neck',
        'Shoulders,Biceps',
        'Strength',
        'Barbell',
        'Steps :1.) Start by setting up a weighted barbell in front of you, keeping your feet shoulder width apart and bend down so that your back is parallel to the floor.2.) Extend your arms down towards the floor, grab the barbell with an overhand grip and bring it to shin level.3.) Slowly pull the barbell up towards your neck, feeling a stretch in your shoulders and hold for a count.4.) Return back to the starting position.5.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Barbell Rear Military Press',
        'Shoulders,Triceps',
        'Strength',
        'Barbell',
        '1.) Start by setting up a barbell with the weight that you would like to perform and stand up straight with your feet shoulder width apart.2.) Extend the barbell above your head as this will be your starting position.3.) Slowly lower the barbell behind your head and squeeze your shoulders.4.) Hold for a count then return back to the starting position.5.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Barbell Rear Press',
        'Shoulders,Triceps',
        'Strength',
        'Barbell',
        '1.) To begin this exercise; start of with a weighted barbell and rest it on your shoulders behind your neck.2.) Take the barbell and extend it overhead by pushing your arms upward. 3.) Hold onto this position for a few seconds4.) Return back to the starting position.5.) Repeat this exercise for as many repetitions as needed.'
    ),
    (
        'Barbell Rear Tricep Extension',
        'Triceps',
        'Strength',
        'Barbell',
        'Steps :1.) Start by laying down with your back on a flat bench, feet on the floor in front of you, holding a weighted barbell above your head.2.) Keep your elbows fixed in one position, slowly lower the bar down until it is almost touching the top of your head, squeezing your triceps and hold for a count.3.) Return back to the starting position.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Barbell Reverse Bench Press (Wide Grip)',
        'Chest,Shoulders,Triceps',
        'Strength',
        'Barbell',
        'Steps :1.) Set up a Smith Machine with the amount of weight that you want to perform and place a flat bench underneath the bar, centering it out for the exercise.2.) Grab the bar with an underhand reverse wide width grip, then unload the bar from the rack and elevate it above your chest.3.) Slowly lower the bar towards your chest so that it is barely touching and hold for a count.4.) Return back to the starting position.5.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Barbell Reverse Curl',
        'Forearms',
        'Strength',
        'Barbell',
        '1.) Stand with your feet shoulders width apart.2.) Bending at the knees pick up barbell.3.) With your palms facing downward lift the barbell to your chest while remaining up straight.4.) Do not bend your upper arms but bend only at your elbows, with your forearms moving.5.) Keep your wrist straight while raising and lowering the barbell. 6.) Repeat for the desired amount of reps. 7.) After the set bend at your knees to set the barbell down.'
    ),
    (
        'Barbell Reverse Grip Tricep Extension',
        'Triceps',
        'Strength',
        'Barbell',
        'Steps :1.) Start by laying on an incline bench with your feet flat on the floor, holding a barbell with both hands over your eyes with palms facing inward.2.) Slowly lower the barbell towards the top of your head feeling tension in your triceps, hold this position for a count and return back to the start.3.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Barbell Reverse Preacher Curl',
        'Biceps',
        'Strength',
        'EZ Curl Bar',
        'Steps :1.) Start by setting up either weighted barbell or EZ bar with the weight that you would like to use to perform this exercise.2.) Then sit down on the bench with your feet flat on the floor and arms extended out grabbing onto the bar with an overhand reverse grip.3.) Slowly curl the bar up towards your shoulders, isolating and squeezing your shoulders, and hold for a count.4.) Return back to the starting position.5.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Barbell Reverse Tricep Bench Press',
        'Triceps,Chest,Shoulders',
        'Strength',
        'Barbell',
        'The barbell reverse triceps bench press exercise is a version of the bench press that specifically isolates the tricep muscles.1.) Start off lying on a flat bench with your head at one end and your feet placed firmly on the floor at the other end.2.) Grabbing a barbell with a reverse grip about 16 inches apart and Move the bar over your chest.3.) Extend your arms fully raising the bar fully and then lower the bar to the starting position.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Barbell Reverse Wrist Curl',
        'Forearms',
        'Strength',
        'Barbell',
        'Steps :1.) Start by kneeling in front of a horizontal bench with your forearms resting on the padding and holding a weighted barbell in both hands with a reverse grip.2.) Slowly lower the barbell down below the bench as far as possible squeezing your forearms and hold for a count.3.) Then return back to the starting position.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Barbell Reverse Wrist Curl',
        'Forearms',
        'Strength',
        'Barbell',
        'Steps :1.) Start by sitting on the edge of a flat bench with a weighted barbell in your hands, arms rested on your legs and weights hanging off of your knees.2.) Slowly let your wrists lower down below your knees as this will be your starting position.3.) Using only your wrists, raise the barbell up while squeezing your forearms until you feel a stretch. 4.) Hold for a count and then return back to the starting position.5.) Repeat for as many reps and sets as desired.Notes :1.) It is important that you keep your arms and legs still throughout the exercise.2.) With this exercise you are isolating the forearms which should be the only muscle felt while performing this workout'
    ),
    (
        'Barbell Rocking Standing Calf Raise',
        'Lower Legs',
        'Strength',
        'Barbell',
        'The rocking standing calf raise exercise uses a simple rocking motion to help strengthen the calves.1.) Start by standing up straight with a bar across your shoulders.2.) With your feet flat on the floor, lift your feet up and forward as if you are performing a calf raise and then rock back onto your ankles so your toes are flexed and off the floor.3.) Return to starting position.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Barbell Romanian Deadlift',
        'Back,Glutes,Lower Legs',
        'Strength',
        'Barbell',
        'The romanian deadlift exercise is similar to the regular deadlift but differs because you keep your legs straight throughout the workout and bring the bar all the way to the ground at each rep.Steps :1.) Start off by placing a barbell in front of your feet on the ground and grabbing the barbell with a grip a bit wider than shoulder-width apart.2.) Bend your knees slightly, keeping your hips and back straight.3.) Lift the bar straight up concentrating on using your hips as you stand.4.) When you are standing the bar should be resting against your thighs.5.) Lower the bar to the floor with a slight bend in your knees flexing your hips back for stability.6.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Barbell Romanian Deadlift From Deficit',
        'Back,Glutes,Upper Legs',
        'Olympic Weight Lifting',
        'Barbell',
        'Steps :1.) To begin this exercise; start off with a weighted barbell right in front of your shins with an overhand grip and standing upon an elevated platform.2.) Bend down at the knees with your back straight, chest out and head facing forward and pull up on the barbell with the driving force from your heels.3.) As you lift the barbell up, keep your back straight and pull up.4.) When the barbell crosses your knees, keep your body straight, chest up holding onto the barbell so you don t strain your muscles.5.) Repeat this exercise for as many repetitions as needed'
    ),
    (
        'Barbell Round the World Shoulder Stretch',
        'Shoulders,Chest,Biceps',
        'Stretching',
        'Barbell',
        '1.) To begin this exercise; start off standing up straight holding a barbell, with palms up towards the ceiling, behind your back.2.) Keep the barbell positioned behind your hips and then slowly lift your arms up so that they are behind your head.3.) Return back to the starting position.4.) Repeat this exercise for as many repetitions as needed.'
    ),
    (
        'Barbell Row',
        'Back',
        'Strength',
        'Barbell',
        '1.) Start by taking a barbell and placing it in a corner or in a place where it can be stabilized, then place a weight at the one end that you will be grabbing.2.) Slowly bend forward so that you are as close to parallel to the ground as possible, keeping your knees bent and feet planted firmly on the floor.3.) Grab the bar with one hand on top of the other, just underneath the plates then pull the bar straight up towards your chest, keeping your elbows in, until the weight touches your lower chest and squeeze your back.4.) Hold for a count then return back to the starting position making sure that the weights do not touch the floor.5.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Barbell Seated Calf Raise',
        'Lower Legs',
        'Strength',
        'Barbell',
        'The barbell seated calf raise is a version of the standard calf raise that uses a block and barbell.1.) Start by placing a block on the floor about one foot in front of a bench.2.) Rest a barbell across your upper thighs and then sit on the bench with the balls of your feet placed upon the block.3.) While keeping the barbell rested across your thighs, slowly raise and lower your heels up as high as possible without lifting your foot off of the block.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Barbell Seated Front Raise',
        'Shoulders',
        'Strength',
        'Barbell',
        'Steps :1.) Start by sitting on the end of a flat bench with your feet together on the floor in front of you and a weighted barbell in your hands rested upon your knees.2.) Slowly elevate the barbell up to shoulder level, squeezing on the way up and hold for a count.3.) Return back to the starting position.4.) Repeat for as many reps and set as desired.'
    ),
    (
        'Barbell Seated Good Morning',
        'Back,Glutes',
        'Powerlifting',
        'Barbell',
        '1.) To begin this exercise; start off by sitting on a bench or a box with your butt resting on the very edge keeping a barbell rested upon your shoulders behind your neck.2.) Then using your torso, lower yourself close down towards your knees, squeezing your back tightly and pressing the barbell down on your shoulders. 3.) Tighten up your abdominals in the process as well.4.) Return back to the starting position.5.) Repeat this exercise for as many repetitions as needed.'
    ),
    (
        'Barbell Seated High Front Raise',
        'Shoulders',
        'Strength',
        'Barbell',
        'Steps :1.) Start by sitting up straight at the end of a flat bench with your feet on the floor in front of you holding a weighted barbell on your knees with an overhand grip.2.) While keeping your arms straight, slowly elevate the barbell up and over your head, squeezing your shoulders on the way up, and hold for a count.3.) Return back to the starting position.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Barbell Seated Press',
        'Shoulders,Triceps',
        'Strength',
        'Barbell',
        'Steps :1.) Start seated at either the end of a flat bench or bench press set-up with your feet on the floor in front of you, holding a weighted dumbbell in front of your chest at shoulder level.2.) Slowly elevate the barbell up and above your head, squeezing your shoulders on the push up, and hold for a count.3.) Return back to the starting position.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Barbell Seated Tricep Extension',
        'Triceps,Shoulders',
        'Strength',
        'Barbell',
        'The barbell seated overhead triceps extension exercise uses a barbell to isolate the triceps.Steps :1.) Start by sitting on a short back chair with your feet firmly placed on the floor and your back straight.2.) Grab an EZ, Curl bar or barbell with a grip about 6 inches apart.3.) Raise the bar to arms length above your head and then lower the bar in an arc towards the floor behind your head.4.) Hold this position for a count.5.) Return to starting position and repeat for as many reps and sets as desired.'
    ),
    (
        'Barbell Seated Twist',
        'Core',
        'Strength',
        'Barbell',
        '1.) To begin this exercise; start off with your body sitting at the end of a flat bench with a barbell placed on the back of your shoulders behind your neck.2.) Keep your feet and your head still; twist your torso from side to side squeezing your abs tightly holding for a few seconds when you reach each side.3.) Release and exhale as you return back to the starting position.4.) Repeat this exercise for as many repetitions as needed.'
    ),
    (
        'Barbell Shoulder Press',
        'Shoulders,Triceps,Chest',
        'Strength',
        'Barbell',
        'The Barbell Shoulder Press primarily works on the deltoid muscles that make up the shoulder but also brings the surrounding muscles into play.1.) Begin in a standing position with feet hip-width apart and your toes pointing forward, keeping your back straight and your abs tight.2.) Grab the barbell with an overhand grip and keep your hands shoulder-width apart.3.) When bringing the barbell down towards your body, make sure that it is in line with your chin, hold for a count then push back upward over your head by extending your arms.4.) When reaching the position above your head, pause and hold for a count, then return back to the starting position.Tips :1.) If you are experiencing any shoulder pain, then you should not perform this exercise.2.) While performing this exercise, make sure that you do not hyperextend your back.3.) If you have to lean backward during the exercise, use a lighter weight as you might injure your back.4.) You can also perform this exercise with dumbbells.'
    ),
    (
        'Barbell Shoulder Pull (Prone)',
        'Shoulders',
        'Strength',
        'Barbell',
        '1.) Begin by setting up a weighted barbell and placing it in front of a flat bench.2.) Lay down with your chest flat on the bench, feet extended behind you and take hold of the bar with an overhand shoulder-width grip.3.) Slowly pull the barbell up to shoulder level, squeezing on the way up and hold for a count.4.) Return back to the starting position.5.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Barbell Shrug',
        'Back,Shoulders,',
        'Strength',
        'Barbell',
        'The barbell shrug exercise is performed to target and build a strong upper trapezius.1.) Begin by gripping the barbell with your palms facing towards your body at shoulder-width apart level.2.) Once you have the barbell in your hands, stand up straight with your abs drawn in and keep your back straight resting the barbell in front of your waist and keeping your shoulders dropped as much as possible.3.) Raise the barbell up in a slow and controlled manner by contracting your traps and raising your shoulders.4.) Shrug the barbell up as high as possible and hold this position at the top for a count.5.) Return back to the starting position and repeat for as many reps and sets as desired.Tips : 1.) Squeeze your shoulder blades together at the top of the shrug, making sure that you perform this exercise slowly and smoothly to prevent injury and get the most out of this workout.'
    ),
    (
        'Barbell Side Bend',
        'Core,Glutes,Back',
        'Strength',
        'Barbell',
        '1.) Hold the barbell on the back of your shoulders as you stand up straight while keeping your feet shoulder width apart.2.) Leave your head up and your back straight; bend down at the waist to the right side as much as possible. 3.) As you bend down, breathe in and clench on your abdominals, holding on the position for a few seconds, come back up to the starting position exhaling on the way up.4.) Repeat steps 1 and 2 but to the left side, followed by repeating for the amount of repetitions you desire.'
    ),
    (
        'Barbell Side Split Squat',
        'Upper Legs,Glutes',
        'Strength',
        'Barbell',
        'The barbell side split squat exercise works the hip muscles and helps build a better and stronger core and improves on coordination.1.) Start by placing a barbell on your shoulders and grasp it with a wide grip.2.) Stand with your feet shoulder-width apart, the foot of the leg you will be leaning towards angled out.3.) Bring your lower body to your foot by bending the hip and knee of your lead leg and keeping your other leg fairly straight.4.) Return to the starting position and switch legs.5.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Barbell Single-Leg Squat',
        'Upper Legs,Lower Legs,Glutes',
        'Strength',
        'Barbell',
        'The barbell single-leg squat isolates, builds and strengthens the leg muscles.Steps :1.) Start off by placing a bench or box 12-18 inches tall behind you.2.) Then lift a barbell off of a weight rack and position it on your shoulders.3.) Place one foot up on the bench, and your other foot firmly on the floor 2-3 feet in front you.4.) Drawing your abs in, descend slowly by bending your front knee and hip in a squatting motion.5.) Squat down as far as you can control without letting your body shift towards your toe.6.) Pause in the downward position, hold for a count and slowly return upright to the starting position.7.) Switch legs and repeat for as many reps and sets as desired.Tips :1.) You can use a pad on the bar or towel on your shoulders to help improve your grip and reduce the discomfort of the bar against your back.2.) By using a taller box, you are increasing the difficulty of the exercise.'
    ),
    (
        'Barbell Skull Crusher (Reverse Grip)',
        'Triceps',
        'Strength',
        'Barbell',
        'Steps :1.) Start by setting up either a weighted barbell or EZ bar, holding it above your chest as you lay with your back flat on a bench, and feet out in front of you.2.) Slowly, while keeping your elbows fixed in place, lower the weight down towards your head until it is almost touching, squeezing your triceps and holding for a count.3.) Return back to the starting position.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Barbell Snatch',
        'Upper Legs,Back,Shoulders',
        'Olympic Weight Lifting',
        'Barbell',
        'Steps :1.) Start by standing in front of a barbell with your feet shoulder width apart and gripping the bar with a double overhand shoulder width grip.2.) Bring the bar to about mid thigh level, keeping your back straight, then extend through your hips and knees forcefully driving the weight upward and shrugging your shoulders to your ears at the same time.3.) Moving your feet into the receiving position, pull yourself below the bar as you elevate it overhead making sure that you receive the bar as low as possible and extend your arms up fully over your body.4.) Make sure that you have a balanced standing position and hold for a count, then slowly and under control lower the bar back to the ground.5.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Barbell Snatch Balance',
        'Upper Legs,Back,Shoulders',
        'Olympic Weight Lifting',
        'Barbell',
        'Steps :1.) Start by with a weighted barbell across your shoulder blades, in a squat position, and your hands placed in a wide snatch grip.2.) Dip down slightly and push the bar up over your head as you drive yourself underneath it and transition into the receiving position.3.) Lower your body closer to the floor in a squatting position, locking the bar over your head, keeping your torso vertical and lower your hips between your legs.4.) Descend your body into full depth, then expand upward through your knees and hips to the starting position, keeping the weight overhead and arms locked.5.) Slowly lower the weight back to the starting position and repeat for as many reps and sets as desired.'
    ),
    (
        'Barbell Snatch Balance',
        'Upper Legs,Back,Shoulders',
        'Olympic Weight Lifting',
        'Barbell',
        'Steps :1.) Start by holding a barbell with light weight across the back of your shoulders, keeping your feet shoulder width apart and turned out slightly.2.) Slowly lower yourself by bending your knees slightly then forcefully pushing yourself up so that the bar is overhead and you can drive yourself underneath.3.) As you continue into a full squat, elevate the barbell overhead and hold for a count.4.) Return to a standing position then slowly, under control, lower the weight back to the starting position.5.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Barbell Snatch Deadlift',
        'Back,Glutes,Upper Legs',
        'Olympic Weight Lifting',
        'Barbell',
        'Steps :1.) Start by standing in front of a weighted barbell and grabbing it with a wide snatch grip, feet directly under your hips and turned out.2.) Squat down towards the bar keeping your back extended and head facing forward.3.) Elevate your body through your heels, raising your hips upward and pulling the bar up along with the motion so that it reaches hip level.4.) Hold this position for a count then return back to the start.5.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Barbell Snatch from Blocks',
        'Upper Legs,Back,Shoulders',
        'Olympic Weight Lifting',
        'Barbell',
        'Steps :1.) Begin by standing in front of a barbell rested upon boxes, with your feet shoulder width apart and gripping the bar with a double overhand shoulder width grip.2.) Bring the bar to about lower knee level, keeping your back straight, then extend through your hips and knees forcefully driving the weight upward and shrugging your shoulders to your ears at the same time.3.) Moving your feet into the receiving position, pull yourself below the bar as you elevate it overhead making sure that you receive the bar as low as possible and extend your arms up fully over your body.4.) Make sure that you have a balanced standing position and hold for a count, then slowly and under control lower the bar back to the ground.5.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Barbell Snatch Pull',
        'Upper Legs,Back,Lower Legs',
        'Strength',
        'Barbell',
        'Steps :1.) Start with a weighted barbell on the floor close to your shins, bent down at your hips keeping your back straight, head facing forward and holding it with a wide grip.2.) Quickly drive through your heels and pull up while extending your knees.3.) As the bar reaches your thigh, extend through your hips and in a jumping motion accelerate through your hips and move the bar upward towards your chest.4.) Do not pull through your arms as with the second pull the bar should be extended up and your body fully extended.5.) Return back to the starting position and repeat for as many reps and sets as desired.'
    ),
    (
        'Barbell Snatch Shrug',
        'Back,Shoulders,',
        'Olympic Weight Lifting',
        'Barbell',
        '1.) To begin this exercise; start off with a barbell in a wide grip position rested on your thighs and keep your back straight.2.) Then take the barbell and shrug it up so that your shoulders reach your ears and hold for a few seconds.3.) Return back to the starting position.4.) Repeat this exercise for as many repetitions as needed.'
    ),
    (
        'Barbell Speed Squat',
        'Upper Legs,Lower Legs,Glutes',
        'Strength',
        'Barbell',
        'The barbell speed squat exercise is a version of the squat the uses an empty barbell and moves at a faster pace to help build speed and conditioning in the body.Steps :1.) Start by placing your feet slightly wider than shoulder width apart with your knees and toes pointed slightly outward.2.) Draw your abs in descend slowly by bending at the knees and hips and squatting towards the floor.3.) Lower yourself as far as you can control without letting your body shift towards your toes.4.) Pause in the downward position and slowly return upright to the starting position.5.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Barbell Spider Curl',
        'Biceps',
        'Strength',
        'Barbell',
        'The spider curl exercise utilizes the straight side of a preacher bench to increase the range of motion of the exercise.Steps :1.) Start off by taking a preacher bench and turning it around so that you are leaning up against the angled side.2.) Grab onto a barbell with a palms up close grip, then lean up against the bench and lower the bar on the flat side and fully extend your arms.3.) Slowly curl the bar up, isolating the biceps, until they touch your forearms.4.) Hold onto this position for a count then return back to the starting position.5.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Barbell Split Clean',
        'Upper Legs,Back,Lower Legs',
        'Olympic Weight Lifting',
        'Barbell',
        'Steps :1.) Start with a weighted barbell on the floor close to your shins, bent down at your hips keeping your back straight, head facing forward and holding it with a wide grip.2.) Quickly drive through your heels and pull up while extending your knees.3.) As the bar approaches your thigh, extend through your hips and in a jumping motion accelerate the bar upward.4.) While accelerating the bar upward your body should be fully extended and as soon as you are fully extended, aggressively shrug and flex your arms with your elbows out and bring yourself down as well as your elbows underneath the bar.5.) Once the bar starts to rotate upwards, split your feet and secure your body for receiving the weight on your shoulders  being supported by your finger tips.6.) Fully extend your body and stand up straight bringing your feet together.7.) Return back to the starting position and repeat for as many reps and sets as desired.'
    ),
    (
        'Barbell Split Jerk',
        'Upper Legs,Glutes,Shoulders',
        'Olympic Weight Lifting',
        'Barbell',
        'Steps :1.) Start off by holding a weighted barbell on the front of your shoulders, slowly dipping down so that your feet are under your hips, and knees are flexed supporting the weight.2.) Then, quickly and powerfully, drive through your heels to push the barbell up while your feet leave the floor and ready in the receiving position as quickly as possible.3.) Quickly move the feet into a split stance as the barbell is forced above your head, one foot forward and the other behind you, and knees bent as you lock the weight above you.4.) Continue into a standing position, bringing your feet together and hold for a count.5.) Return back to the starting position and repeat for as many reps and sets as desired.'
    ),
    (
        'Barbell Split Jump',
        'Upper Legs,Glutes,Lower Legs',
        'Strength',
        'Barbell',
        'Steps :1.) Start by setting up a barbell with the weight that you would like to perform for this exercise and rest the barbell on your shoulder blades just as if you were to perform a squat.2.) Place your hands on the bar with a wide grip for stability then lower yourself down towards the ground in a lunge motion.3.) Bend at the knees and keep your back straight, stabilize the bar on your shoulder blades.4.) Quickly push through the balls of your feet with enough force to lift yourself up off of the ground then return right back to the lunging squat position.5.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Barbell Squat',
        'Upper Legs,Lower Legs,Glutes',
        'Strength',
        'Barbell',
        'The barbell squat is used for building muscle mass, strengthening the quads, and is considered one of the main power exercises.Steps :1.) To begin this exercise, set up a bar with the amount of weight that you would like to perform on a squat rack.2.) Lift the bar off of the rack and position the weight so that it is rested upon your upper back (lower traps).3.) Keeping your head and chest up and looking forward, sit back slightly bending at your knees as you push back your hips then lower your body slowly to the floor.4.) Slowly lower your body until the top of your thighs are parallel to the ground then hold for a two count feeling a stretch in your muscles.5.) Return back up to the starting position and repeat for as many reps and sets as desired.Tips :1.) We recommend using a squat rack to help you when performing this exercise unless you are going to perform the squat with a very low weight.2.) By keeping your head looking forward and slightly upward, it will help you prevent from arching your back.3.) Tightening your abs will help take any pressure off of your back.4.) It is important to make sure that you are strong enough and your back is able to handle enough pressure from the weight rested upon your body.5.) If you feel any pain or discomfort when performing the squat exercise, stop doing them immediately to prevent any further injury.6.) Remember to breathe and prevent from locking your knees as you could possibly pass out from blood rush.'
    ),
    (
        'Barbell Squat (Wide Stance)',
        'Upper Legs,Lower Legs,Glutes',
        'Strength',
        'Barbell',
        'The barbell wide stance squat exercise is a version of the squat that uses a wider stance to isolate the inner thigh muscles1.) Start by lifting a barbell off of a weight rack and position it on your shoulders.2.) Stand with your feet wider than shoulder width apart (about 30 inches apart) with your toes pointing out.3.) Draw your abs in descend slowly by bending at the knees and hips in a squatting motion.4.) Lower yourself as far as you can control without letting your body shift towards your toes.5.) Pause in the downward position and slowly return upright to the starting position.6.) Repeat for as many reps and sets as desired.Tips : 1.) By using a pad on the bar or towel on your shoulders can help improve your grip and reduce the discomfort of the bar.'
    ),
    (
        'Barbell Squat Jerk',
        'Upper Legs,Shoulders,Lower Legs',
        'Strength',
        'Barbell',
        'Steps :1.) Start with a weighted barbell racked upon your front shoulders, dipping down with your body so that your feet are under your hips, and knees are flexed.2.) As you go down a little bit, quickly reverse your direction upward as fast and powerful as possible driving your force through your heels so that the bar is able to leave the shoulders.3.) While the bar moves above your head, your feet will come up off of the floor and you will want to quickly rotate your feet into a receiving position outside of your hips so that they can absorb the full weight of the barbell.4.) Once your feet have been moved into place, catch the bar in a full squat position with arms fully extended over your head and hold for a count.5.) Return back up to the starting position or carefully return the weight to the floor and repeat for as many reps and sets as desired.'
    ),
    (
        'Barbell Squat to Shoulder Press',
        'Upper Legs,Glutes,Shoulders',
        'Strength',
        'Barbell',
        '1.) Start by standing with your feet shoulder width apart, holding a barbell across the front of the chest.2.) Slowly squat down under control keeping your knees bent over your toes and press the barbell over your head extending your arms straight up.3.) Hold this position as soon as you feel a stretch in your thighs and glutes for a count then return back up to the starting position.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Barbell Squat to Upright Row',
        'Upper Legs,Glutes,Shoulders',
        'Strength',
        'Barbell',
        'Steps :1.) Start by standing up straight with your feet shoulder width apart, knees slightly bent and  holding a barbell at your thighs with your palms facing down in a narrow grip position.2.) Slowly squat down under control keeping your knees bent over your toes at the same time pulling the barbell up to about sternum height until you feel a squeeze in your thighs, glutes and shoulders.3.) Then squat back up to the starting position and repeat for as many reps and sets as desired.'
    ),
    (
        'Barbell Squat with Narrow Stance',
        'Upper Legs,Back,Glutes',
        'Strength',
        'Barbell',
        '1.) To begin this exercise; start off with a weighted barbell rested upon your shoulders behind your neck and place your feet less then a shoulder width apart with your toes slightly pointing out.2.) Bend at your knees and start to sit back with your hips as you go down for a standard squat keeping your back and chest straight out. 3.) Continue on with the squat until your hamstrings are on your calves and hold on for a few seconds.4.) Then using the force of your heels and lower legs, straighten out and extend your hips to get back to your starting position.5.) Repeat this exercise for as many repetitions as needed'
    ),
    (
        'Barbell Standing Calf Raise',
        'Lower Legs',
        'Strength',
        'Barbell Weight Plate',
        'The standing barbell calf raise helps target the lower leg muscles and build stronger legs.1.) Start of by placing a block or two free weight plates on the floor, then placing a weighted barbell across your back and step up so that the balls of your feet are on the block.2.) Slowly lift your heels up off of the floor and then lower them back so that you feel as much of a stretch as possible in your calf muscles.3.) Return to the starting position and repeat for as many reps and sets as desired.'
    ),
    (
        'Barbell Step-Up',
        'Upper Legs,Lower Legs,Glutes',
        'Strength',
        'Barbell',
        'The barbell step up exercise helps build coordination as well as muscle and leg strength.1.) Start by placing a bench, box or step in front of you and grabbing a barbell with a wide grip and placing it across your shoulders.2.) With your left leg, step up onto the bench and follow through with your right leg.3.) Step back down with your left leg and then your right leg.4.) Repeat for as many reps and sets as desired.Tips :1.) Use a weight that is manageable and that allows you to get used to the motion of this exercise.'
    ),
    (
        'Barbell Stiff-Leg Deadlift',
        'Back,Glutes,Upper Legs',
        'Strength',
        'Barbell',
        'Steps :1.) Start by standing up straight with your feet shoulder width apart and your arms at your sides with a weighted barbell held at thigh level.2.) While keeping your knees still, slowly lower your upper body and the barbell towards the floor over your feet.3.) Keep moving your body forward until you feel a stretch in your hamstrings then hold for a count.4.) Return back to the starting position by extending through your hips until you are at the start.5.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Barbell Stiff-Leg Deadlift (Bench)',
        'Back,Glutes,Upper Legs',
        'Strength',
        'Barbell',
        'Steps :1.) Start by standing up straight, feet shoulder width apart, near the edges of two flat benches and holding weighted barbell at waist level with an overhand grip.2.) While keeping your back straight as possible and legs stiff, slowly lower your upper body down towards the floor along with the barbell, keeping it in front of your legs, feeling a stretch in your hamstrings on the way down.3.) Hold for a count when you reach the lowest point possible, squeezing with your hamstrings and glutes then return back to the starting position.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Barbell Stiff-Leg Deadlift (Wide Stance)',
        'Back,Glutes,Upper Legs',
        'Olympic Weight Lifting',
        'Barbell',
        'Steps :1.) Start by placing a weighted barbell on the floor in front of you.2.) Position yourself in a wide stand with feet well over shoulder width apart, bending at the hips and grabbing the bar in a close grip.3.) Keep your hips as far back as possible and your legs straight.4.) Then extend through your pelvis, driving your hips forward, keeping your arms hanging straight with the barbell coming up to thigh level.5.) Continue with this motion until you are fully standing up straight, then carefully return the weight down to the starting position.6.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Barbell Sumo Deadlift',
        'Back,Glutes,Upper Legs',
        'Powerlifting',
        'Barbell',
        'Steps :1.) To begin this exercise; start off with a weighted barbell on the ground and spread your feet very wide apart. 2.) Bend your knees and body and grip the barbell with one underhand grip and one overhand grip.3.) Extend through with your hips and knees to drive the barbell up off the floor driving your hips into the bar.4.) Return back to the starting position.5.) Repeat this exercise for as many repetitions as needed'
    ),
    (
        'Barbell Supine Reverse Extension',
        'Triceps',
        'Strength',
        'Barbell',
        'Steps :1.) Start by laying on your back on a flat bench with your feet on the floor in front of you, holding a weighted barbell or EZ bar behind your head dangling towards the floor.2.) Slowly elevate the bar up and out so that it creates a straight line with your body and squeeze your triceps.3.) Hold for a count then return back to the starting position.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Barbell Tricep Extension',
        'Triceps',
        'Strength',
        'Barbell',
        '1.) Lie down on a bench with your head at one end.2.) Grasp a barbell with an underhand grip.3.) Move your arms beyond your head and keep them in a straight line.4.) Bending only your elbows, slowly lower and raise the barbell.'
    ),
    (
        'Barbell Tricep Extension (Supine)',
        'Triceps',
        'Strength',
        'Barbell',
        'Steps :1.) Lie down on a bench with your head at one end.2.) Grasp a barbell with an underhand grip.3.) Move your arms beyond your head and keep them in a straight line.4.) Bending only your elbows, slowly lower and raise the barbell.'
    ),
    (
        'Barbell Tricep Press (Close Grip)',
        'Triceps',
        'Strength',
        'Barbell',
        'The lying close-grip barbell triceps press to chin exercise is a classic weight lifting workout based to build the tricep.1.) Start by lying on a flat bench with your head at one end and holding a barbell with a close grip, with an overhand grip, above your shoulders as this will be your starting position.2.) Slowly lower the barbell in an arc motion towards your chin, keeping your elbows close in, until you feel a stretch in your tricep muscles.3.) Hold this position for a count and then return back to the starting position.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Barbell Tricep Press (Supine)',
        'Triceps,Chest',
        'Strength',
        'Barbell',
        'The barbell lying triceps press is a great exercise for building and strengthening the triceps.1.) Start by lying on a flat bench with your head at one end and feet planted firmly on the floor at the other end.2.) Grab a EZ or Curl bar with an overhand grip and raise the bar straight up over your shoulders, keeping your elbows close in.4.) Slowly lower the bar in an arc over your head until you feel a stretch in your tricep muscle.5.) Return the bar to the starting position.6.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Barbell Upright Row',
        'Shoulders,Triceps,',
        'Strength',
        'Barbell',
        'Targeting your traps and deltoids, the barbell upright row is an important shoulder strengthening exercise.1.) Start by standing up straight with your feet shoulder-width apart.2.) Grab the barbell with an overhand grip (your palms facing towards you).3.) Once you have a grip, raise the bar up towards your chin, elevating and contracting from your shoulders and traps, until it is about collar bone level.4.) As soon as you reach the top position, hold for a count then slowly lower the bar back to the starting position.Tips :1.) If possible and available, try performing this exercise while using a rack, you will be able to rest the weight on the rack and pick it up from a more comfortable position without injuring yourself or pulling your muscles.2.) Prevent dropping your shoulders3.) Keeping your abs tight will help protect your back during the upright row.4.) Using a shoulder-width grip and maintain good posture while performing this exercise is key.5.) Holding onto the bar with a narrow grip will help target the trap muscles more but in turn will make you more prone to shoulder injury.'
    ),
    (
        'Barbell Wrist Curl (Palms Down)',
        'Forearms',
        'Strength',
        'Barbell',
        '1.) Start by placing the barbell on the floor in front of a flat bench.2.) Sit down on the bench with your legs shoulder width apart.3.) Use your hands to grab the barbell and bring it up so that your forearms are resting against your thighs with palms downward. 4.) Start out by curling your wrist upwards and exhaling.5.) Slowly lower your wrist back down to the starting position while inhaling. (Do not move your arms or legs during the exercise.)6.) Repeat for the desired amount of reps.'
    ),
    (
        'Barbell Wrist Curl (Palms Up)',
        'Forearms',
        'Strength',
        'Barbell',
        '1.) Start out by placing the barbell on the floor in front of a flat bench.2.) Sit down on the bench with your legs shoulder width apart.3.) Use your hands to grab the barbell and bring it up so that your forearms are resting against your thighs with palms upward. 4.) Start out by curling your wrist upwards and exhaling.5.) Slowly lower your wrist back down to the starting position while inhaling.6.) Repeat for the desired amount of repetitions and sets.Tips :1.) Refrain from moving your forearms during this exercise.'
    ),
    (
        'Barbell Wrist Curl (Posterior)',
        'Forearms',
        'Strength',
        'Barbell',
        '1.) Stand with your feet shoulders width apart.  2.) Grasp the barbell in your hands with your palms facing outwards.  3.) Lift the barbell up and down using only your hands while keeping your arms straight.'
    ),
    (
        'Barbell Zercher Squat',
        'Upper Legs,Lower Legs,Glutes',
        'Strength',
        'Barbell',
        'Steps :1.) To begin this exercise; start off by taking a weighted barbell and rest it on the top of your arm that is located between your forearm and upper arm.2.) Take the bar and make sure that it is resting upon your forearms, cross your arms and clasp your hands against your chest to secure the barbell.3.) Then lower the bar and lower your body down by the knees as in a regular squat until your upper legs and your knees form a 90-degree angle and hold onto this position for a few seconds.4.) Return back to the starting position.5.) Repeat this exercise for as many repetitions as needed'
    ),
    (
        'Barbell Zercher Squat',
        'Upper Legs,Glutes,Lower Legs',
        'Strength',
        'Barbell',
        'The barbell zercher squat is a variation of the squat exercise that is similar to the front squad and helps build the upper muscles of the quadriceps.Steps :1.) Start by lifting a barbell off of a weight rack, placing it across your chest and holding it with your arms crossed.2.) Place your feet slightly wider than shoulder width apart with your knees and toes pointed slightly outward.3.) Drawing your abs in descend slowly by bending at the knees and hips in a squatting motion.4.) Lower yourself as far as you can control without letting your body shift towards your toes.5.) Pause in the downward position and slowly return upright to the starting position.6.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Bench Calf Stretch',
        'Lower Legs,Back,Upper Legs',
        'Stretching',
        'Bench',
        'Steps :1.) Start by placing a bench, step or platform in front of your body then taking your right heel and placing it on top of the platform.2.) Lean forward with your upper body and grab onto your right toe with your right hand, keeping your left leg bent behind you and straight.3.) Take your left hand, place it on your left thigh to help support the extra weight placed upon your left leg.4.) Keep pulling your toes until you feel a stretch in your calf then hold this position for 15 to 30 seconds.5.) Return back to the starting position and repeat for as many reps, sets and however long you desire.'
    ),
    (
        'Bench Crunch',
        'Core,',
        'Strength',
        'Bench',
        'The crunches with legs on a bench is one of the most common abdominal exercises that isolates the ab muscles.1.) Lie on your back with your feet up on a bench, keeping your knees bent at a 90-degree angle, placing your hands across your chest or on either side of your head.2.) Raise your head, shoulders and chest off the floor moving towards your knees, as you flex your spine.3.) Hold the position for a moment and then lower to the starting position.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Bench Dip',
        'Triceps,Chest',
        'Strength',
        'Bench',
        'The bench dip exercise is one of the most basic and best workouts for building the triceps and bigger arms.Steps :1.) Start by placing two benches parallel to each other 3-4 feet apart.2.) Sit on one bench and place your feet on the edge of the other bench so that your legs are suspended between the two.3.) Cross your feet for support, holding onto the bench with your hands for support and slowly lower body towards the floor by bending your elbows.4.) Pause, hold for a count and then return to starting position.5.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Bench Hip Thrust',
        'Core',
        'Strength',
        'Bench',
        'Steps :1.) Begin by laying with your back on a flat bench with your feet hanging off one end and grabbing the bench above your head.2.) Keep your feet and knees together and then slowly bring them up towards the ceiling keeping them pointed straight up.3.) While your legs are pointed straight up, thrusts your hips up off of the bench then slowly low back down to the bench.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Bench Jackknife Sit-Up',
        'Core',
        'Strength',
        'Bench',
        'Steps :1.) Begin by laying down with your back flat on a bench and your legs hanging off one end and the your arms extended out behind you on the other.2.) Slowly, while keeping your hands and feet together, raise both your legs and arms up to the center of your body and try to touch each other.3.) Squeeze your abdominals in this process then slowly and under control lower your body back to the starting position4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Bench Leg and Hip Stretch',
        'Upper Legs',
        'Stretching',
        'Bench',
        'Steps :1.) Start by sitting upright on a bench with your feet flat on the floor and holding onto the sides of the bench with your hands.2.) Slowly raise one leg off of the floor and then extend your leg.3.) Next, move the leg outward towards, performing hip abduction, as far as you can and hold for a few seconds before bringing it back to the center and back down.4.) Repeat for as many reps and how long as you desire.'
    ),
    (
        'Bench Leg Pull-In',
        'Core',
        'Strength',
        'Bench',
        '1.) Begin by lying flat on a bench.  2.) Bring your knees up to your chest while keeping your legs together. 3.) Extend your legs back down on the bench.4.) Repeat for the desired amount of reps.'
    ),
    (
        'Bench Leg Raise (Supine)',
        'Core',
        'Strength',
        'Bench',
        '1.) Begin in a supine (on your back) position on a flat bench.2.) Raise your legs up in the air while keeping them together.  3.) Extend them till they are straight up in the air pointing towards the ceiling.  4.) Slowly bring back your legs to a flat position.  5.) Repeat for the desired amount of reps.'
    ),
    (
        'Bench Oblique Crunch',
        'Core,Forearms,Glutes',
        'Strength',
        'Bench',
        '1.) Start by placing a flat bench in front of you, then rest one are on the bench while extending your legs out, one foot on top of the other, in front of you until your body is parallel with the floor.2.) While keeping your arms rested on the bench, elevate your body through your pelvis as this will be your starting position.3.) From there lower your pelvis down towards the floor until you feel a stretch in your abdominals.4.) Hold onto this position for a count then return back to the starting position.5.) Repeat for as many reps and sets as desired. 6.) Switch sides and repeat.Notes :- It is important to make sure that your legs stay extended out in front of you and arm stays rested on the bench.- The only movement that you want to make is within your obliques and pelvis as they extend down towards the floor and back up with each rep.'
    ),
    (
        'Bench Plank',
        'Core',
        'Strength',
        'Bench',
        'Steps :1.) Begin by turning a bench sideways and placing your feet in the middle of the bench.2.) Extend your body forward and rest your torso upon your forearms with your fingers interlaced, make sure that your body is completely straightened out in a plank position.3.) Hold onto this position for as long as possible then release the tension.4.) Repeat for as many reps, sets and however long you desire.'
    ),
    (
        'Bench Push-Up',
        'Chest,Shoulders,Triceps',
        'Strength',
        'Bench',
        '1.) Start by setting up a bench horizontally getting yourself in a push-up position so that your arms are extended, in a shoulder-width position on the floor with your feet extended behind you with toes on the bench.2.) Slowly lower your body down towards the bench so that your chest is almost touching then hold for a count.3.) Return back to the starting position.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Bench Quad Stretch (Supine)',
        'Upper Legs,Core,Chest',
        'Stretching',
        'Bench',
        'Steps :1.) Start by laying with your back flat on a bench, hanging one leg and arm over the side.2.) Slowly bend at your knee and hold on to the top of the foot with the extended arm.3.) Pull back on your foot, keeping your body straight, until you feel a stretch in your quads.4.) Hold this position for 15 to 30 seconds and return to the starting position.5.) Repeat for as many reps, sets and duration as desired.'
    ),
    (
        'Bench Rotational Crunch',
        'Core',
        'Strength',
        'Bench',
        'Steps :1.) Start by placing a bench horizontally in front of you and then laying with your back on the floor, feet placed upon the bench with your arms out to your sides in a "T" position.2.) Extend your hands behind your head and clasp them around for support as you come up for this exercise.3.) Slowly lift your upper body up off of the floor and twist your right elbow into your left knee until you feel a stretch in your abs.4.) Hold for a count, return to the starting position and repeat with the opposite side.5.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Bench Weighted Decline Crunch',
        'Core',
        'Strength',
        'Bench',
        'Steps :1.) Begin by laying back on a decline bench with a weight plate crossed between your arms over your chest and placing your feet securely in the foot rests.2.) Then slowly curl your body up, making sure to squeeze in through your abdominals and hold for a few seconds at the top.3.) Return back to the starting position and repeat for as many reps and sets as desired.'
    ),
    (
        'Bent Knee Hip Raise',
        'Core,Glutes',
        'Strength',
        'Body Only',
        'The bent knee hip raise exercise is a great exercise to target the abdominals and for core development.1.) Start off lying on your back with your arms outstretched to your sides.2.) Bend your knees at a 60-degree angle and hold your feet up just off the floor.3.) Keeping your back and arms down, raise your hips up and off the floor so that your knees are over your chest.4.) Contract your abs for a moment and then return to the starting position.5.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Bent Knee Hundreds',
        'Core,Glutes,Upper Legs',
        'Strength',
        'Body Only',
        '1.) Start off laying on your back with both feet raised and bent so that your knees are in a 90 degree angle directly over your hips.2.) Keep your arms rested by your sides but with your palms down and a slight elbow bend.3.) Flex your body forward letting your head and shoulders curl up off of the floor and bringing your chest to your pelvis.4.) Then raise your arms up off of the floor and keep them at level with your shoulders, moving them up and down rapidly but in a controlled motion.5.) Return back to the starting position and repeat for as many reps and sets desired.'
    ),
    (
        'Bent Knee Side Angle Pose',
        'Core,Back,Chest',
        'Stretching',
        'Body Only',
        '1.) Start by laying on your back with hands by your sides and your knees up. 2.) Lift your pelvis up off of the floor so that your glutes are completely up and back/spine are elevated as well.3.) With your body is elevated, move your chest closer towards your chin and your tailbone shifts close towards your knees which move in opposite direction away from your body.4.) Keep your knees tight together and don t let them split apart.5.) Hold this position for up to 10 seconds and return back to the starting position.6.) After returning back to the starting position, hug your knees towards your chest and rock to help release any tension in your back.7.) Repeat steps again if continuing with pose'
    ),
    (
        'Bicep Stretch',
        'Biceps',
        'Stretching',
        'Body Only',
        'Steps :1.) Start by standing up straight, extending your arms behind you and grabbing your hands together behind your back.2.) Slowly raise your arms, turn your hands so that your palms are facing outward, and feel a stretch in your bicep.3.) Hold for 15 to 30 seconds then return back to the starting position.4.) Repeat for as many reps and duration as desired.'
    ),
    (
        'Bird Dog',
        'Core,Back,Upper Legs',
        'Strength',
        'Body Only',
        'Steps :1.) Start by kneeling on all fours with your knees underneath your hips and your wrists under your shoulders.2.) When in position, extend your right arm away from your body keeping in line with your shoulder and head while you extend your left leg away from your body at the same time.3.) Hold onto this position for a few seconds then return back to the starting position and repeat but with your left arm and right leg.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Boat Pose',
        'Core,Back,Upper Legs',
        'Stretching',
        'Body Only',
        '1.) Start off by sitting on a mat and leaning back with your hands and keeping your pelvis forward.2.) Shift your abs so that they are closer in towards your spine and then lift your legs in the air with feet together and toes pointed out.3.) Keeping your legs straight reach your hands forward towards your knees and hold this position for up to 5 seconds.4.) Return back to the starting position and then repeat steps again.'
    ),
    (
        'Bodyweight Calf Raise',
        'Lower Legs',
        'Strength',
        'Body Only',
        'Steps :1.) Start by setting up either a step or a block next to either a support structure or smith machine.2.) Place the balls of your feet on the edge of the block/step and let your heels drop down towards the floor as far as possible.3.) Then slowly raise your heels up as high as possible, squeezing your calves and hold for a count.4.) Return back to the starting position.5.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Bodyweight Lunge',
        'Upper Legs,Glutes,Lower Legs',
        'Strength',
        'Body Only',
        'Steps :1.) Start by standing up straight with your knees slightly bent then get into a lunge position, and squat down through your hips.2.) Squat down so that your front leg is parallel with the floor and hold for a count.3.) Return back to the starting position.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Bodyweight Rear Lunge',
        'Upper Legs,Glutes,Lower Legs',
        'Strength',
        'Body Only',
        'Steps :1.) Start by standing up straight with a slight bend in your knees and arms at your sides.2.) Step behind you with one of your legs while maintaining your balance and squat down through your hips.3.) Lower yourself down towards the ground so that your front knee is parallel with the ground and hold for a count.4.) Return back up to the starting position.5.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Bodyweight Side Lunge',
        'Upper Legs,Glutes',
        'Strength',
        'Body Only',
        'Steps :1.) Start by standing up straight with a slight bend in your knees.2.) Step out to your side with your left leg and squat down through your hips.3.) Lower yourself towards the floor so that your front leg is parallel with the floor and hold for a count.4.) Return back to the starting position.5.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Bodyweight Single-Leg Calf Raise',
        'Lower Legs',
        'Strength',
        'Body Only',
        'Steps :1.) Start by standing to the side of either a smith machine or a support structure, with the ball of one of your feet rested on a block or step, and holding onto the support.2.) Slowly elevate one of your heels off of the floor as far as possible, keeping the other leg extended behind you, and squeeze your calf.3.) Hold for a count and return back to the starting position.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Bodyweight Squat',
        'Upper Legs,Core,Glutes',
        'Strength',
        'Body Only',
        '1.) Start by positioning your feet shoulder-width apart and bend at the knee, sitting back with your hips.2.) Extend your arms out in front of you with your hands clasped together and squat down until your knees are parallel with your glutes.3.) Return back to the starting position.4.) Repeat this exercise for as many repetitions as needed'
    ),
    (
        'Bodyweight Step-Up',
        'Upper Legs,Glutes,Lower Legs',
        'Strength',
        'Bench',
        'Steps :1.) Start by setting up a horizontal bench in front of you, standing up straight with your feet in a shoulder width position and arms at your sides.2.) Lift your left foot and step up onto the platform.3.) Then once your foot is firmly on the platform, raise up your right foot and follow up onto the platform so that you are standing up on the platform.4.) Return back to the starting position.5.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Bodyweight Walking Lunge',
        'Upper Legs,Glutes,Lower Legs',
        'Strength',
        'Body Only',
        'Steps :1.) Start by standing up straight with your knees slightly bent and arms at your sides.2.) Step forward with your left leg and squat down through your hips driving your body down towards the floor, squeezing your quads.3.) Hold for a count then continue moving forward by alternating the lunge with the opposite leg and repeating the motion.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Bodyweight Wall Squat',
        'Upper Legs,Glutes,Lower Legs',
        'Strength',
        'Body Only',
        'Steps :1.) Start by positioning your back flat up against the wall with arms crossed in front of you, feet out in front of you and knees slightly bent.2.) Slowly slide your torso down against the wall, lowering your glutes towards the ground until your thighs are parallel with the ground.3.) Hold for a count then return back to the starting position.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Bow Pose',
        'Core,Chest,Lower Legs',
        'Stretching',
        'Body Only',
        'Steps :1.) Begin this pose by lying face down on the floor.2.) Arch your back, keeping shoulder blades back, bend your legs and reach back tightly grabbing your ankles.3.) Hold this position for a 5 count and then return back to the starting position.'
    ),
    (
        'Box Jump Multiple Response',
        'Upper Legs,Lower Legs',
        'Strength',
        'None',
        'Steps :1.) Place a box, that is about 2 feet tall, in front of you and stand about arms length away.2.) Slightly bend down at the knees with your arms at your sides and with as much force as you can, jump up and forward onto the box landing with both feet.3.) As soon as you land immediately drop down to the original starting position.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Box Jump with Single-Leg Stabilization',
        'Lower Legs,Upper Legs',
        'Strength',
        'None',
        'Steps :1.) Start off by standing on a plyo box or a bench, arms at your sides and feet together.2.) Jump off of the platform and gently land on the ball of your foot.3.) Hold the landing position and repeat, landing on opposite leg.'
    ),
    (
        'Box Side to Side Shuffle',
        'Upper Legs,Lower Legs',
        'Strength',
        'None',
        'Steps :1.) Start by standing to one side of a box with your left foot resting in the middle of the platform.2.) Quickly jump up and over to the other side, landing with your left foot on the floor and your right foot on top of the box.3.) After landing continue to shuffle back and forth across the box until you have completed the amount of reps you wanted to perform.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Box Single-Leg Push-Off',
        'Upper Legs,Lower Legs',
        'Strength',
        'None',
        'Steps :1.) Start by standing in front of a box with one foot resting upon the box with knee bent and the other rested on the ground.2.) Once in position push up with your top foot on the box trying to get as much height as possible.3.) As you come back down, land with the same foot on top of the box returning the elevated foot back to the floor and starting position.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Boxing',
        'Cardio',
        'Cardio',
        'Others',
        'Boxing is a combat sport in which two people fight one another with their fists, it is a great exercise that helps increase stamina, agility and strength while also helping you lose weight and tone your body.'
    ),
    (
        'Bridge',
        'Glutes',
        'Strength',
        'Body Only',
        'The bridge exercise is a great exercise to help build and maintain core strengthSteps : 1.) Start by lying on your back with your knees bent and your feet flat on the floor.2.) Lift up your hips off the floor as you draw your abs in and keep your glutes tight.3.) Hold the position for a count then return back to the start.4.) Repeat for as many sets as desired.'
    ),
    (
        'Cable Behind the Back Wrist Curl',
        'Forearms',
        'Strength',
        'Machine - Strength',
        'Steps :1.) Start by setting up either a straight or EZ bar on a low pulley cable machine and grab the bar behind your back using an underhand shoulder width grip.2.) Keep your elbows tucked in at your sides and slowly raise the bar up, squeezing your forearms and hold for a count.3.) Return back to the starting position.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Cable Bent-Over Lateral Pulley',
        'Shoulders',
        'Strength',
        'Machine - Strength',
        'Steps :1.) Start by setting up handles on two low pulley cable machines and positioning yourself in between the machines with feet shoulder width apart.2.) Bend down with your upper body, keeping your lower body still, so that your back is parallel with the floor.3.) Grab each handle with the opposite hand and bring it in towards your chest, keeping arms crossed.4.) Slowly let your arms extend outward, feeling a stretch in your shoulders and squeeze.5.) Hold for a count then return back to the starting position.6.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Cable Bicep Curl',
        'Biceps',
        'Strength',
        'Machine - Strength',
        'The standing biceps cable curl exercise uses a cable instead of a barbell to target the bicep muscles.Steps :1.) Start by attaching a short bar to a cable pulley at the bottom of the machine then stand with your feet shoulder width apart, abs tight and knees bent slightly.2.) Grab the bar with a close underhand grip, lower your arms down towards your thighs and then, by bending through your elbows, raise the bar up towards your upper chest.3.) Once at the top position, squeeze your biceps and hold for a count.4.) Return back to the starting position and repeat for as many reps and sets as desired.'
    ),
    (
        'Cable Bicep Curl (Close Grip)',
        'Biceps',
        'Strength',
        'Machine - Strength',
        'Steps :1.) Start by standing up straight in front of a low pulley cable machine with a straight bar attached to the machine, with your arms rested at your sides and feet flat on the floor.2.) Grab the bar in a close underhand grip then slowly, then raise it up towards your shoulders, isolating the bicep and hold for a count.3.) Return back to the starting position.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Cable Bicep Curl (Supine Close Grip)',
        'Biceps,Forearms',
        'Strength',
        'Machine - Strength',
        'The cable lying close grip biceps curl exercise combines a flat body position with a pulling motion to isolate the biceps and build bigger arms.1.) Start by placing a flat bench under a cable weight stack and attach a flat bar to the pulley.2.) Lie down with your head towards the stack and your feet firmly on the floor.3.) Grab the bar with an overhand grip (palms down) about 8 inches apart, and extend your arms straight up.4.) Curl the bar down in an arc touching your chin and hold the position for a count.5.) Slowly return to the starting position.'
    ),
    (
        'Cable Bicep Curl (Supine)',
        'Biceps,Forearms',
        'Strength',
        'Machine - Strength',
        'The lying bicep cable curl exercise isolates the muscles of your biceps without standing or sitting.1.) Start off by attaching a short bar to a cable pulley set on the lowest setting and lie down on a mat or the floor with your feet touching the weight stack.2.) Grasp the bar with and underhand grip (palms facing up), and with your arms fully extended and your elbows at your sides, pull the bar in an arc to your chest.3.) Hold for a count by contracting your biceps, and then return to the starting position.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Cable Calf Raise',
        'Lower Legs',
        'Strength',
        'Machine - Strength',
        'Steps :1.) Start by setting up either a dip belt, rope or straight bar on a low pulley cable machine and placing either a step or block in front of the machine.2.) Step onto the block with the balls of your feet on the edge and letting your heels drop down as far as possible without touching the floor.3.) Then slowly raise your heels up as far as possible, squeezing your calves and hold for a count.4.) Return back to the starting position.5.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Cable Chest Press (Supine Stability Ball)',
        'Chest',
        'Strength',
        'Machine - Strength',
        'Steps :1.) Start by setting up handles on two low pulley cable machines and placing an exercise ball in between the machines.2.) Grab onto the handles with a neutral, hammer grip, twisting them so they are horizontal and sit down on the ball.3.) Slowly walk your feet out in front of you so that your legs are extended out in front of you with knees bent and your back is flat on the middle of the ball.4.) Raise the handles above your chest as this will be your starting position.5.) Slowly lower the handles down to your sides, feeling a stretch in your chest and hold for a count.6.) Return back up to the starting position and squeeze.7.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Cable Cross-Over',
        'Chest,Biceps,Shoulders',
        'Strength',
        'Machine - Strength',
        'If you want to target your inner chest, the cable crossover is a great exercise to achieve the results you are looking for as long as you have two cable machines facing each other.1.) Start by attaching handles to the cable machines at a high pulley level.2.) Position yourself in between both of the machines with your legs slightly bent.3.) Grab onto the handles of the pulleys with your palms facing down and your arms extended out to your sides.4.) Then slowly pull the handles down towards the floor until they either touch or cross over in front of you, feeling a stretch and squeeze in your muscles.5.) Hold this position for a count then return back to the starting position.Tips : 1.) During the performing of this exercise, squeeze and contract your pec muscles to make this exercise even more effective.'
    ),
    (
        'Cable Crunch',
        'Biceps',
        'Strength',
        'Machine - Strength',
        'Steps :1.) Start by placing a flat bench in front of a low pulley cable machine with your feet flat on the floor and arms grasping onto a straight bar attached to the machine.2.) Hold the bar with an underhand grip and let your arms rest between your thighs, keeping them still by squeezing with your legs.3.) Slowly curl the bar up towards your shoulders, isolating the bicep, and hold for a count.4.) Return back to the starting position.5.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Cable Crunch',
        'Core',
        'Strength',
        'Machine - Strength',
        'Steps :1.) Start by attaching a rope to a high cable pulley system and then turn your back to machine and pull the rope over your head.2.) Position the rope next to your head and slowly crunch forward bringing your head down towards your thighs until you feel a stretch in your abs then hold for a count.3.) Return back to the starting position.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Cable Crunch Rotation',
        'Core',
        'Strength',
        'Machine - Strength',
        '1.) Start by connecting a rope attachment to a high pulley cable machine, grabbing the rope with both hands and move into a kneeling position on the floor.2.) Position the rope behind your head with your hands by your ears, then contract your abs as you pull downward on the rope in a crunch movement until your elbows touch your knees.3.) Hold this position for a count and then return back up to the starting position and repeat for as many reps and sets as desired.'
    ),
    (
        'Cable Deadlift',
        'Back,Glutes,Upper Legs',
        'Strength',
        'Machine - Strength',
        '1.) Start by attaching a bar to a low pulley cable machine and standing in front of it with your feet shoulder width apart and back straight.2.) Bend down and grab the bar with an overhand grip and slowly lift the bar up towards upper thigh level, keeping your back, arms and legs straight through the motion.3.) Hold this position for a count then return back to the start.4.) Repeat for as many reps and sets desired.'
    ),
    (
        'Cable Decline Chest Fly',
        'Chest',
        'Strength',
        'Machine - Strength',
        'Steps :1.) Start by setting up handles on two low pulley cable machines and placing a decline bench in between both machines.2.) Grab onto both handles with an overhand grip and lay down on the decline bench, keeping your back flat on the bench and feet underneath the foot rests.3.) Raise the handles above your head as this will be your starting position.4.) Slowly lower and extend your arms out to your sides, feeling a stretch in your chest and hold for a count.5.) Return back to the starting position and squeeze your chest.6.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Cable Decline One-Arm Chest Fly',
        'Chest',
        'Strength',
        'Machine - Strength',
        'Steps :1.) Start by setting up a handle on a low pulley cable machine and placing a decline bench next to the machine.2.) Grab onto the handle with an overhand grip and lay down on the decline bench, keeping your back flat on the bench and feet underneath the foot rests.3.) Raise the handle above your head as this will be your starting position.4.) Slowly lower and extend your arm out to your side, feeling a stretch in your chest and hold for a count.5.) Return back to the starting position and squeeze your chest.6.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Cable Decline One-Arm Press',
        'Chest',
        'Strength',
        'Machine - Strength',
        'Steps :1.) Start by laying back on a decline bench facing away from a cable machine.2.) Grab a cable and hold it one hand in an overhand grip, bringing the cable to about level with your right pec and elbow bent at 90-degrees.3.) Once in position, slowly press and extend your arm straight out until you feel tension in your chest, and hold for a count.4.) Repeat for as many reps and sets desired.'
    ),
    (
        'Cable Decline Press',
        'Chest,Shoulders',
        'Strength',
        'Machine - Strength',
        '1.) Start by laying back on an decline bench facing away from a cable machine.2.) Grab two cables and hold it both hands in an overhand grip, bringing the cables to about level with your pecs and elbows bent at 90-degrees.3.) Once in position, slowly press and extend your arms straight out until you feel tension in your chest, and hold for a count.4.) Repeat for as many reps and sets desired.'
    ),
    (
        'Cable Decline Pullover',
        'Shoulders,Back',
        'Strength',
        'Machine - Strength',
        'Steps :1.) Start by placing a decline bench in front of a high cable pulley machine with the head rest facing the machine.2.) Attach a long bar to the machine and sit down with your back on the bench and feet planted firmly on the floor or in a foot rest.3.) Grab the bar with both hands with palms facing out and slowly pull up and out with your shoulders until the bar reaches to around your pelvic area.4.) Hold this position for a count then return back up slowly to the start.5.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Cable Deltoid Raise',
        'Shoulders,Forearms',
        'Strength',
        'Machine - Strength',
        '1.) To begin this exercise; start off by standing to the side of a low pulley row and with your right hand grab the handle to the pulley.2.) Keep your back and chest straight and your feet shoulder width apart. 3.) Take your right hand with the pulley and elevate it up so that it is at shoulder level and hold for a few seconds.4.) Return back to the starting position.5.) Repeat this exercise for as many repetitions as needed.'
    ),
    (
        'Cable Drag Curl',
        'Biceps',
        'Strength',
        'Machine - Strength',
        'Steps :1.) Start by standing up straight in front of a low pulley cable machine with a straight bar attached to the machine, with your arms rested at your sides and feet flat on the floor.2.) Grab the bar in an underhand grip then slowly, keeping the bar as close as possible to your body, raise it up towards your shoulders, isolating the bicep and hold for a count.3.) Return back to the starting position.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Cable Elevated Row',
        'Back,Shoulders',
        'Strength',
        'Machine - Strength',
        'Steps :1.) Start by taking an elevated platform and placing it on top of the bench for a cable row machine.2.) Sit down on the bench placing your feet on the foot rests in front of you, keeping your knees slightly bent and then lean slightly to grab the handle to perform the exercise.3.) Slowly extend your arms and elbows back pulling the handle towards your lower chest, feeling a stretch within your lats and lower back.4.) Hold this position for a count then return back to the starting position.5.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Cable External Rotation',
        'Shoulders',
        'Strength',
        'Machine - Strength',
        'Steps :1.) Start by placing an extension band around a post or in a secure position where it will not release and is at elbow level.2.) Position yourself to the side of the band and with your hand that is opposite of the band, reach out and grab the handle.3.) Bring the band to your chest keeping your elbow bent in a 90-degree angle then slowly rotate your arm in a backhand motion so that the band externally rotates out.4.) Continue out as far as possible so that you feel a stretch in your shoulders, hold for a count and then return back to the starting position.5.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Cable Flat Bench Fly',
        'Chest,Biceps,',
        'Strength',
        'Machine - Strength',
        'Similar to the cable crossover, the flat bench cable fly targets your chest using the fly motion but the difference with this exercise is that it allows you to lay flat on a bench and support your back.1.) Start by placing a bench in between two cable machines and making sure that the bench is position so that when you lie down on it, your shoulders are in line with the pulleys.2.) Then grab a handle in each hand and sit on the edge of the bench, then slowly lean back until you are fully rested upon the bench and in the starting position.3.) Keep your arms out to your sides with your elbows pointed down at the ground with a slight bend.4.) Slowly lift the handles up above your chest to perform this exercise, squeezing your chest muscles and holding for a count.5.) Return back to the starting position and repeat for as many reps and sets as desired.Tips : 1.) It is important to perform this exercise with a weight that you are able to manage to prevent any injuries.'
    ),
    (
        'Cable Front Lat Pulldown (Close Grip)',
        'Back,Biceps',
        'Strength',
        'Machine - Strength',
        'The close-grip font lat pulldown is a classic bodybuilder exercise use to target the back muscles, specifically the lower lats.1.) Start by sitting down at a pull-down machine and place your knees underneath the padding on the machine.2.) Grab onto the bar with a close overhand grip and pull the bar down straight until it is even with your upper chest.3.) Once in the final position hold for a count while squeezing the lat muscles and then slowly return back to the starting position.'
    ),
    (
        'Cable Front Raise',
        'Shoulders,,',
        'Strength',
        'Machine - Strength',
        'To better target your front shoulder muscles, the cable front raise exercise helps improve your arm movement and build sculpted shoulders.1.) Start this exercise by grabbing the barbell with an overhand grip while also keeping your abs tight.2.) With your arms relatively straight, only a slight bend in your elbows, and your knees slightly bent, raise the barbell to shoulder level. 2.) Keeping your arms relatively straight along with your knees bent, raise the barbell up to shoulder level.3.) Once you reach the top position, hold for a count then return back to the starting position.Tips :1.) When performing this exercise, make sure that you hold your abs tight to be able to support your back and prevent from bending your back as this may result in injury.'
    ),
    (
        'Cable Front Raise (Supine)',
        'Shoulders',
        'Strength',
        'Machine - Strength',
        'Steps :1.) Begin by setting up a low pulley cable machine with a straight bar attachment. Lay down on the ground with your feet extended out towards the machine and hold the bar at your waist.2.) Slowly extend the bar up and above your chest, squeezing in your shoulders and hold for a count.3.) Return back to the starting position.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Cable Grip Lat Pulldown (Narrow Grip)',
        'Back',
        'Strength',
        'Machine - Strength',
        'Steps :1.) Start by sitting down on a cable machine and grabbing a narrow grip bar.2.) Slowly pull the bar down towards your chest, flexing at your elbows and keeping your back angled at around 45-degrees, and hold this position for a few seconds feeling the tension in your lats and lower back.3.) Return back to the starting position and repeat for as many reps and sets as desired.'
    ),
    (
        'Cable High Cross-Over',
        'Chest,Triceps',
        'Strength',
        'Machine - Strength',
        'Steps :1.) Start by setting up handles on two high cable pulley machines and standing up straight, feet shoulder width apart in between the machines.2.) Grab onto the handles with an overhand grip, keeping your arms extended up and out to your sides.3.) Slowly bring the cables down and in front of your body, crossing over each other and squeeze your chest.4.) Hold this position for a count then return back to the starting position.5.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Cable High Curl',
        'Biceps,Triceps',
        'Strength',
        'Machine - Strength',
        'The high cable curl exercise targets the muscles of your arms from a different position and helps build bigger biceps.1.) Start by placing a flat bench next to a cable weigh stack and attaching a short bar to the high pulley.2.) Lay on your back with your head towards the stack.3.) Grip the bar with and overhand grip (palms facing you) and extend your arms fully on a slight angle over your head.4.) Pull the bar down towards you, curling your arms as much as possible, and holding for a count.5.) Slowly return to the starting position.6.) Repeat for as many reps and sets as possible.'
    ),
    (
        'Cable High Pulley Tricep Extension',
        'Triceps',
        'Strength',
        'Machine - Strength',
        'Steps :1.) Start by setting up a high cable pulley machine with a straight bar and stand with your back facing the machine, grabbing the bar with an overhand grip.2.) Bend down at the waist so that your body is almost parallel with the floor and keep a staggered position so that one leg is in front of the other.3.) Keeping your hands close together, push the bar out in front of you until your arms are fully extended, squeezing your triceps and hold for a count.4.) Return back to the starting position.5.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Cable Hip Abduction',
        'Glutes,Upper Legs',
        'Stretching',
        'Machine - Strength',
        'The hip adduction exercise helps strengthen the hip flexor and thigh muscles.Steps :1.) Start by standing alongside a cable pulley stack and attach a cuff to the pulley near your ankle.2.) Step away from the stack holding onto the stack for support.3.) While standing firm on the foot not attached to the cable, slowly abduct (pull away) your cuffed ankle in front of your stabilizing leg and back.4.) Repeat and switch ankles.'
    ),
    (
        'Cable Incline Bench Row',
        'Back,Biceps',
        'Strength',
        'Machine - Strength',
        'Steps :1.) Start by taking an incline bench and placing it in front of a cable pulley machine with the high end facing the straight bar that is attached to the machine.2.) Lay down with your chest flat on the bench and grab the bar with an overhand grip then slowly pull the bar in towards your chest.3.) Squeeze your back as the bar reaches your chest and hold for a count.4.) Return back to the starting position.5.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Cable Incline Bicep Curl',
        'Biceps',
        'Strength',
        'Machine - Strength',
        'Steps :1.) Start by setting up an incline bench in between two low pulley cable machines with handles attached to each machine.2.) Sit with your back flat on the incline bench with each hand holding onto the cables and your feet flat on the floor.3.) Keep your arms outstretched then slowly curl the cables in towards your chest, isolating your biceps, and hold for a count.4.) Return back to the starting position and repeat for as many reps and set as desired.'
    ),
    (
        'Cable Incline Fly',
        'Chest,Shoulders,',
        'Strength',
        'Machine - Strength',
        'The cable fly exercise helps target your upper chest and top pectoral muscles.Steps :1.) Start off setting up a bench so that it is at a 35 or 45 incline angle and placed in between two cable machines facing each other.2.) Grab onto the handles, sit on the edge of the bench and then lean back with your arms out at your sides and elbows slightly bent, as this will be your starting position.3.) Pull on the cables, with your arms extended out and using your chest to pull the cables, until the handles are directly above your chest.4.) Squeeze with your chest and hold for a count then return back to the starting position.Tips :1.) Keep your elbows slightly bent at the same position from the start to the finish.2.) The most important thing is to focus on using your chest as much as possible when performing this exercise without using your triceps or arms.'
    ),
    (
        'Cable Incline Fly (Stability Ball)',
        'Chest,Core,Glutes',
        'Strength',
        'Machine - Strength',
        'Steps :1.) Start by setting up handles on two low pulley cable machines and placing an exercise ball in between the machines.2.) Grab onto the handles with a neutral, hammer grip, and sit down on the ball.3.) Slowly walk your feet out in front of you so that your legs are extended out in front of you with knees bent and your back positioned on the middle of the ball.4.) Raise the handles above your chest as this will be your starting position.5.) Slowly lower the handles down to your sides, feeling a stretch in your chest and hold for a count.6.) Return back up to the starting position and squeeze.7.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Cable Incline Press',
        'Chest,Shoulders',
        'Strength',
        'Machine - Strength',
        'Steps :1.) Start by laying back on an incline bench facing away from a cable machine.2.) Grab two cables and hold it both hands in an overhand grip, bringing the cables to about level with your pecs and elbows bent at 90-degrees.3.) Once in position, slowly press and extend your arms straight out until you feel tension in your chest, and hold for a count.4.) Repeat for as many reps and sets desired.'
    ),
    (
        'Cable Incline Press (Stability Ball)',
        'Chest,Core,Glutes',
        'Strength',
        'Machine - Strength',
        'Steps :1.) Start by setting up handles on two low pulley cable machines and placing an exercise ball in between the machines.2.) Grab onto the handles with a neutral, hammer grip, twisting them so they are horizontal and sit down on the ball.3.) Slowly walk your feet out in front of you so that your legs are extended out in front of you with knees bent and your upper back is flat on the middle of the ball so that you are in an incline position.4.) Raise the handles above your chest as this will be your starting position.5.) Slowly lower the handles down to your sides, feeling a stretch in your chest and hold for a count.6.) Return back up to the starting position and squeeze.7.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Cable Incline Pulldown (supine)',
        'Back',
        'Strength',
        'Machine - Strength',
        '1.) To begin this exercise; start off by lying back flat on an incline bench facing away from the pulley machine.2.) Take the bar from the pulley machine and extend it in front of you and down until its right above your thighs.3.) Then return back to the starting position slowly, squeezing your back tightly as you reach the start.4.) Repeat this exercise for as many repetitions as needed.'
    ),
    (
        'Cable Incline Pullover',
        'Shoulders',
        'Strength',
        'Bench',
        'Steps :1.) Start by placing a bench in front of a high cable pulley machine with the head rest facing the machine in an incline position.2.) Attach a long bar to the machine and sit down with your back on the bench.3.) Grab the bar with both hands and palms facing out. Slowly pull down with your shoulders until the bar reaches to around your pelvic area.4.) Hold this position for a count then return back up slowly to the start.5.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Cable Incline Tricep Extension',
        'Triceps',
        'Strength',
        'Bench',
        'Steps :1.) Start by setting up an incline bench in front of a low pulley cable machine and attach a straight bar for the exercise.2.) Sit down facing away from the machine, holding the bar with an overhand grip behind your head as this will be your starting position.3.) Slowly push the bar above your head, squeezing your triceps and hold for a count.4.) Return back to the starting position.5.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Cable Incline Tricep Extension',
        'Triceps',
        'Strength',
        'Machine - Strength',
        'The cable incline triceps extension exercise uses cables to isolate and work the tricep muscles.1.) Start by placing an incline bench facing away from a cable pulley and attaching a short straight bar to the pulley, adjusting the height so that your arms can extend fully.2.) Lie face up (back flat) on the bench and grasp the bar with a narrow overhand grip.3.) Starting with your elbows bent overhead, slowly lower the bar towards your feet.4.) Pause at the bottom and then return to starting position.5.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Cable Incline Tricep Extension',
        'Triceps',
        'Strength',
        'Machine - Strength',
        'The cable incline tricep extension exercise uses cables to isolate and work the tricep musclesSteps : 1.) Start off by placing an incline bench facing away from a cable pulley and attaching a short straight bar to the pulley, adjusting the height so that your arms can extend fully.2.) Lie face up (back flat) on the bench and grasp the bar with a narrow overhand grip.3.) Keeping your arms bent at right angles, slowly extend the bar upward until the arms are straight.4.) Pause at the bottom and then return to starting position.5.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Cable Inner Chest Press',
        'Chest,Shoulders',
        'Strength',
        'Machine - Strength',
        'Steps :1.) Begin by setting up the handles on a high cable pulley machine. While standing in between the machines, take hold of a handle in each hand. Extend your arms behind your body with elbows bent.2.) Keep your chest up, then slowly bring the handles together in front of your body at about waist level.3.) As you reach waist level, extend your arms and push down while contracting your chest muscles.4.) Hold for a count then return back to the starting position.5.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Cable Internal Rotation',
        'Shoulders,,',
        'Strength',
        'Machine - Strength',
        'To target the small rotator cuff muscle of your shoulder, perform the internal rotation exercise.Steps :1.) Start by sitting with your legs flat on the floor next to a low cable pulley machine and holding the handle of the cable in line with your waist and at arms-length away.2.) After grabbing on to the handle, pull it in towards your body, keeping your elbow at your side.3.) Slowly rotate your shoulder and bring your forearm across your abs, feeling a stretch in your shoulder muscles and hold for a count.4.) Return back to the starting position and repeat for as many reps and sets as desired.5.) Switch arms and repeat.Tips :1.) You don t need to use heavy weights for this exercise in order for it to be successful and effective, actually by using heavier weight this can result in injury and force larger muscles to take over rather making it ineffective.2.) Placing a rolled up towel under your armpit can make it comfortable on your shoulders and a much more effective exercise.'
    ),
    (
        'Cable Judo Flip',
        'Core',
        'Strength',
        'Machine - Strength',
        'Steps :1.) Start by connecting a rope attachment to a low pulley cable machine and standing to the side of the cable with a wide stance and rope in both hands.2.) Turn your body away from the machine as you bring the rope over your shoulder as if you were performing a judo flip shifting the weight forward as you crunch to pull the rope downward.3.) Hold this position for a count then return back to the start and repeat for as many reps and sets desired.'
    ),
    (
        'Cable Knee Raise (Supine)',
        'Core',
        'Strength',
        'Machine - Strength',
        'Steps :1.) Start by placing a flat bench right in front of a low pulley cable machine and attaching ankle straps to the pulley.2.) Lay with your back flat on the bench, feet pointed towards the machine and your hands grasping the bench behind your head.3.) Slowly pull your knees up as high as you can towards your chest until you feel a stretch in your abs, then return back to the starting position.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Cable Kneeling Crunch',
        'Core',
        'Strength',
        'Machine - Strength',
        '1.) Kneel below a high pulley that contains a rope attachment.2.) Grasp cable rope attachment and lower the rope until your hands are near your cheeks. 3.) Crunch down with your abs so that your face gets very close to the ground.4.) Kneel back up slowly and inhale.  5.) Repeat for the desired amount of reps.Tips : 1.) For a more intense work out go at a slower pace.'
    ),
    (
        'Cable Kneeling Pulldown',
        'Core,Core',
        'Strength',
        'Machine - Strength',
        'Steps :1.) Start off by kneeling down on a mat in front of a cable machine, grabbing a straight bar and keep your back straight.2.) Slowly pull the handle down to your knees using your knees, feeling the tension in your upper and lower lats, and hold for a few seconds.3.) Return back to the starting position and repeat for as many reps and sets desired.'
    ),
    (
        'Cable Kneeling Tricep Extension',
        'Triceps',
        'Strength',
        'Machine - Strength',
        'The cable kneeling concentration tricep extension exercise helps target and tone the tricep muscles by limiting your range of motion and increasing the effectiveness of the movement.1.) Start by attaching a stirrup handle to a cable pulley and adjust the pulley up high.2.) Kneeling on your left knee (with the left side of your body turned towards the machine), keep your right bent and the upper portion of your thigh parallel to the floor.3.) With your right elbow and upper arm pressed against your inner thigh just above your knee, pull the cable down towards the floor in a slight arcing motion.4.) Slowly to return to starting position.5.) Repeat for as many reps and sets as desired.6.) Switch arms and repeat the steps.'
    ),
    (
        'Cable Kneeling Tricep Extension',
        'Triceps',
        'Strength',
        'Machine - Strength',
        'The kneeling cable triceps extension exercise allows you to isolate your triceps more effectively and building bigger arms through kneeling.Steps :1.) Start off by placing a bench sideways in front of a high pulley machine and attaching a straight bar onto the machine.2.) Grab onto the straight bar with an overhand grip and kneel on the floor in front of the bench, keeping your back straight and head down.3.) Positioning your elbows and your forearms above your head, push down on the bar in an arc motion so that your forearms are touching the bench.4.) Hold onto this position for a count, isolating the triceps and return back up to the start.5.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Cable Lat Pulldown',
        'Back,Shoulders,Biceps',
        'Strength',
        'Machine - Strength',
        '1.) To begin this exercise; start off sitting on a bench and grab onto overhead cables that are attached to a pulley machine. 2.) Grab each cable with the opposite hands so that you arms are criss-crossed.3.) Then pull back and down with your lower back as if you were doing a pulldown so that each hand is on the correct side. 4.) Hold onto this position for a few seconds squeezing your lower back tightly.5.) Return back to the starting position.6.) Repeat this exercise for as many repetitions as needed.'
    ),
    (
        'Cable Lat Pulldown (Wide Grip)',
        'Back,Shoulders',
        'Strength',
        'Machine - Strength',
        'The wide-grip lat pulldown is one of the classic bodybuilding exercises used to help build a stronger back.Steps :1.) Start by sitting a cable pull down machine that has a wide bar attachment and grab it with a wide overhand grip.2.) Keeping your abs drawn in, back straight and pull down on the bar to your upper chest.3.) Hold for a count at the bottom position, squeeze your lats and then slowly return back to the starting position.'
    ),
    (
        'Cable Lateral Raise',
        'Shoulders,Shoulders,',
        'Strength',
        'Machine - Strength',
        'The bent over cable lateral raise is a great exercise for building strong shoulders and targeting your rear deltoids and the use of a cable machine offers consistent resistance compared to a dumbbell bent over raise.Steps :1.) Start off attaching a handle to a cable machine and stand with your side facing the machine.2.) Bend slightly at your knees to get in the bent over position without bending at your back.3.) Take the cable hand with your arm furthest from the cable machine as this arm will be going across the front of your body.4.) Slowly raise your arm across your body and out to the side, continuing until your arm is level with the ground.5.) Hold onto this position for a count then return back to the starting position. Switch sides when done.'
    ),
    (
        'Cable Leg Kickback',
        'Glutes,Upper Legs,',
        'Strength',
        'Machine - Strength',
        'Steps :1.) Start by setting up an ankle strap or cable onto a low pulley cable machine and attaching it to one of your ankles.2.) Stand in front of the machine and place your arms against it for support.3.) Slowly move the weighted leg backward, extending it as far as you can, feeling a stretch in your calf and hold for a count.4.) Return back to the starting position.5.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Cable Low Tricep Extension',
        'Triceps',
        'Strength',
        'Machine - Strength',
        'The cable low triceps extension exercise is performed while lying on a seated row cable station and targets the triceps muscles.1.) Start by attaching a rope to the cable pulley at of a seated row station.2.) Lie on the bench with your head facing the weight stack.3.) Grab the rope with your palms facing each other and raise your arms over your chest, with your forearms parallel to the floor at a 90 degree angle.4.) Slowly extend your arms upward squeezing your triceps.5.) Return to starting position and repeat for as many reps and sets as desired.'
    ),
    (
        'Cable Lower Chest Raise',
        'Chest,Shoulders',
        'Strength',
        'Machine - Strength',
        'Steps :1.) Start by setting up handles on a low pulley cable machine, standing in between the machines, grabbing the handles with both hands and keeping your arms at your sides.2.) Slowly bring the handles together in front of your body at about waist level and squeeze your lower chest.3.) Hold for a count then return back to the starting position.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Cable Lying Crunch',
        'Core',
        'Strength',
        'Machine - Strength',
        'Steps :1.) Start by placing a rope attachment to a low pulley cable machine and lay down in front of the machine with your head close to the pulley.2.) Keeping your knees bent, grab the rope with your palms facing inward and pull up to your head.3.) Slowly contract your abs, so that your shoulders are up off of the floor, and reach up as much as possible towards your knees until you feel a stretch.4.) Return to the starting position and repeat for as many reps and sets as desired.'
    ),
    (
        'Cable Lying Tricep Extension',
        'Triceps',
        'Strength',
        'Machine - Strength',
        'The cable lying triceps extension uses cables to isolate and work the tricep muscles.1.) Start off by placing a flat bench with the end towards a weight stack and attaching a short straight bar to the pulley and lower the pulley to the bottom of the stack.2.) Lie face up (back flat) on the bench and grasp the bar with a narrow overhand grip.3.) Starting with your arms extended lower the bar towards the stack by bending your elbows.4.) Slowly extend your arms upright and return to the starting position.5.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Cable Mid Chest Crossover',
        'Chest,Shoulders',
        'Strength',
        'Machine - Strength',
        'Steps :1.) Start by setting up two handles on two high cable pulley machine and stand in between the machines with your hands extended out gripping the handles above your body.2.) Slowly bring the handles down towards your sides as this will be your starting position.3.) Then bring the handles in together towards the front of your body, squeezing your chest and hold for a count.4.) Return the handles back to the starting position.5.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Cable Oblique Crunch',
        'Core',
        'Strength',
        'Machine - Strength',
        'Steps :1.) Start by standing with your side next to a high pulley cable machine with a grip attachment connected to the machine.2.) Grasp the handle with one of your hands, with your feet shoulder width apart and the other arm rested at your side.3.) Slowly pull down and rotate the body with the arm grasping the cable with your obliques until you feel a stretch in your core.4.) Return back to the starting position and switch to the opposite side.5.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Cable One-Arm Bicep Curl',
        'Biceps,Forearms',
        'Strength',
        'Machine - Strength',
        'The cable standing one arm bicep curl exercise is a single arm version of the bicep cable curl that targets and isolates the bicep muscle.1.) Start off by attaching a stirrup bar to a low cable pulley and standing on the side of the weight stack with your legs shoulder width apart and your knees slightly bent.2.) Grasp the stirrup in one hand with an underhand grip (palms facing up) and lower the stirrup to the top of your thighs.3.) Keeping your elbows still, curl the stirrup up towards your chest, squeezing and isolating the bicep muscle.4.) Slowly lower the stirrup to the starting position.5.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Cable One-Arm Concentration Curl',
        'Biceps',
        'Strength',
        'Machine - Strength',
        'Steps :1.) Start by setting up a handle on a low cable pulley machine and then placing a flat bench in front of the machine.2.) Sit down and grasp the handle with one hand, holding it in a concentration curl position.3.) Slowly curl the cable up towards your shoulder, isolating the bicep, until you feel a stretch and tension in your muscle.4.) Hold for a count then return back to the starting position.5.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Cable One-Arm Fly (Stability Ball)',
        'Chest',
        'Strength',
        'Machine - Strength',
        'Steps :1.) Start by setting up a handle on a low pulley cable machine and placing an exercise ball next to the machine.2.) Grab onto the handle with a neutral, hammer grip, and sit down on the ball.3.) Slowly walk your feet out in front of you so that your legs are extended out in front of you with knees bent and your back is flat on the middle of the ball.4.) Raise the handle above your chest as this will be your starting position.5.) Slowly lower the handle down to your side, feeling a stretch in your chest and hold for a count.6.) Return back up to the starting position and squeeze.7.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Cable One-Arm High Curl',
        'Biceps',
        'Strength',
        'Machine - Strength',
        '1.) Begin by standing sideways next to a high pulley machine, arm extended out at about shoulder height and gripping the handle with one of your hands.2.) Slowly curl the cable towards your head, isolating the bicep until you feel tension, and hold for a count.3.) Return back to the starting position and repeat for as many reps and sets as desired.'
    ),
    (
        'Cable One-Arm Incline Fly (Stability Ball)',
        'Chest',
        'Strength',
        'Machine - Strength',
        'Steps :1.) Start by setting up a handle on a low pulley cable machine and place an exercise ball next to the machine.2.) Grab onto the handle with a neutral, hammer grip, and sit down on the ball.3.) Slowly walk your feet out in front of you so that your legs are extended out in front of you with knees bent and your back is flat on the middle of the ball.4.) Raise the handle above your chest as this will be your starting position.5.) Slowly lower the handle down to your side, feeling a stretch in your chest, just as in a fly and hold for a count.6.) Return back up to the starting position and squeeze.7.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Cable One-Arm Incline Press',
        'Chest',
        'Strength',
        'Machine - Strength',
        'Steps :1.) Start by laying back on an incline bench facing away from a cable machine.2.) Grab a cable and hold it one hand in an overhand grip, bringing the cable to about level with your right pec and elbow bent at 90-degrees.3.) Once in position, slowly press and extend your arm straight out until you feel tension in your chest, and hold for a count.4.) Repeat for as many reps and sets desired.'
    ),
    (
        'Cable One-Arm Incline Press (Stability Ball)',
        'Chest,Core,Back',
        'Strength',
        'Machine - Strength',
        'Steps :1.) Start by setting up a handle on a low pulley cable machine and placing an exercise ball next to the machine.2.) Grab onto the handle with a neutral, hammer grip, twisting it so that it is turned horizontally and sit down on the ball.3.) Walk your feet out in front of you so that your legs are extended out in front of you with knees bent and your upper back is flat on the middle of the ball.4.) Raise the handle above your chest as this will be your starting position.5.) Slowly lower the handle down to your side, feeling a stretch in your chest and hold for a count.6.) Return back up to the starting position and squeeze.7.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Cable One-Arm Lat Pulldown',
        'Back,Biceps',
        'Strength',
        'Machine - Strength',
        'Steps :1.) Start by sitting on a bench in front of a low pulley cable machine with one handle attached.2.) Grab the handle with one arm in a pronated grip (palms facing out) and then pull the handle down, squeezing in your lats as you come down until you feel a tension in the muscle.3.) Hold for a count then return back to the starting position.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Cable One-Arm Lateral Raise',
        'Shoulders',
        'Strength',
        'Machine - Strength',
        'Steps :1.) Begin by setting up a handle on a low pulley cable machine, stand to the side of the weights and grab the handle with the opposite arm of the machine.2.) Bring your arm to waist level and slowly elevate it up and out in a semi-circle motion, squeezing your shoulders during the movement.3.) Hold for a count then return back to the starting position.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Cable One-Arm Preacher Curl',
        'Biceps',
        'Strength',
        'Machine - Strength Machine - Strength',
        'Steps :1.) Start off setting up either a handle on a low pulley cable machine and place a preacher bench in front of the machine.2.) Grab onto the handle with an underhand grip, then sit down on the bench with your forearm rested over the padding and feet flat on the floor in front of you.3.) Keep your arm extended out in front of you then slowly curl the handle up towards your chest, isolating your bicep and squeeze.4.) Hold for a count then return back to the starting position.5.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Cable One-Arm Preacher Curl (Reverse)',
        'Biceps',
        'Strength',
        'Machine - Strength',
        'Steps :1.) Start by setting up either a handle on a low pulley cable machine and placing a preacher bench in front of the machine.2.) Grab onto the handle with an overhand, reverse grip, then sit down on the bench with your forearm rested over the padding and feet flat on the floor in front of you.3.) Keep your arm extended out in front of you then slowly curl the handle up towards your chest, isolating your bicep and squeeze.4.) Hold for a count then return back to the starting position.5.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Cable One-Arm Press (Stability Ball)',
        'Chest',
        'Strength',
        'Machine - Strength',
        '1.) Start off setting up a handle on a low pulley cable machine and placing an exercise ball next to the machine.2.) Grab onto the handle with a neutral, hammer grip, twisting it so that it is in a horizontal position and sit down on the ball.3.) Slowly walk your feet out in front of you so that your legs are extended out in front of you with knees bent and your back is flat on the middle of the ball.4.) Raise the handle above your chest as this will be your starting position.5.) Slowly lower the handle down to your side, feeling a stretch in your chest and hold for a count.6.) Return back up to the starting position and squeeze.7.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Cable One-Arm Reverse Curl',
        'Forearms',
        'Strength',
        'Machine - Strength',
        'Steps :1.) Start by setting up a handle on a low pulley cable machine and grabbing the handle with one hand with your elbow rested at your side.2.) Keeping your body straight, slowly elevate the handle up towards your shoulders, squeezing your forearms and hold for a count.3.) Return back to the starting position.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Cable One-Arm Reverse Fly',
        'Shoulders',
        'Strength',
        'Machine - Strength',
        'Steps :1.) Start by setting up a low cable pulley machine with a cable attachment and standing to the side of the machine with feet shoulder width apart.2.) Bend down at your knees, keeping your back parallel with the floor, bringing your opposite arm holding the cable in front of your body and this will be your starting position.3.) Slowly elevate your arm up and out, squeezing your shoulders until the handle reaches head level and hold for a count.4.) Return back to the starting position.5.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Cable One-Arm Rotational Row',
        'Back',
        'Strength',
        'Machine - Strength',
        'Steps :1.) Start off by standing in front of a low pulley cable machine with a handle attached to the machine.2.) Grab the handle with one of your hands and slowly start to pull the weight towards your side, twisting your arm in the process to form an underhand grip.3.) Once you feel a stretch in your lower back, squeeze and hold for a count, then return back to the starting position.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Cable One-Arm Row',
        'Back,Biceps,Shoulders',
        'Strength',
        'Machine - Strength',
        '1.) Start by setting up a handle on a low pulley cable machine and grab the handle with one hand in an overhand grip.2.) Keep your knees slightly bent and back straight, then pull the handle in towards your side, squeezing with your back and hold for a count.3.) Return back to the starting position.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Cable One-Arm Seated Row',
        'Back,Biceps,Triceps',
        'Strength',
        'Machine - Strength',
        'Steps :1.) Start off sitting on the floor or on bench facing a low pulley seated cable row.2.) Keep your body straight up and feet positioned on the foot rests in front of you.3.) Grab the handle attached to the machine with an overhand grip and slowly pull back towards your side twisting with your wrists.4.) Squeeze your back muscles as you pull in and hold for a count then return back to the starting position.5.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Cable One-Arm Side Bend',
        'Core',
        'Strength',
        'Machine - Strength',
        'Steps :1.) Start by connecting a cable to a high pulley cable machine, standing to the side of the machine and gripping the cable with one hand with an underhand grip.2.) Slowly pull down on the cable with your obliques so that you are performing a side crunch.3.) Once you reach the maximum contraction and farthest you can bend without bending your knees, hold for a count then return back to the starting position.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Cable One-Arm Tricep Extension',
        'Triceps',
        'Strength',
        'Machine - Strength',
        'Steps :1.) Start by placing a handle on a low cable pulley machine and putting a flat bench in front of the machine.2.) Stand up straight with your back facing the machine, grabbing the handle with one hand and extending it over your head, as this will be your starting position.3.) Slowly lower the weight behind your head, squeezing your tricep and holding for a count.4.) Return back to the starting position.'
    ),
    (
        'Cable One-Arm Tricep Extension',
        'Triceps',
        'Strength',
        'Machine - Strength',
        'The standing one arm low-pulley triceps extension exercise uses a cable machine to target and isolate the tricep muscles.1.) Start by attaching a handle to a low cable pulley machine and standing with your back to the weight stack, and your feet shoulder width apart.2.) With your left hand, reach behind you and grasp the handle.3.) Place your right hand on your left elbow for support.4.) Extend your left arm straight up towards the ceiling and then lower it to the starting position.5.) Repeat and switch arms.'
    ),
    (
        'Cable One-Arm Tricep Extension',
        'Triceps',
        'Strength',
        'Machine - Strength',
        'Steps :1.) Start by setting up a low cable pulley machine with a handle, then grab the handle and extend it above your head while turning away from the machine.2.) Keep your palm facing away from the machine and then lower the weight back behind your head, squeezing your tricep and hold for a count.3.) Return back to the starting position.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Cable One-Arm Tricep Extension (Reverse Grip)',
        'Triceps',
        'Strength',
        'Machine - Strength',
        'The cable one arm tricep extension exercise isolates the tricep muscles individually and helps build bigger arms.1.) Start off by placing a cable pulley on the highest setting and adjust a stirrup handle to the pulley.2.) Stand facing the weight stack and grasp the handle with and underhand grip.3.) Keep your back straight, your abs drawn in and your knees slightly bent.4.) Starting at the top push your arm down until it is straight, feeling the concentration and stretch in your tricep muscle.5.) Slowly return to starting position.6.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Cable One-Arm Tricep Extension (Reverse Grip)',
        'Triceps',
        'Strength',
        'Machine - Strength',
        'Steps :1.) Start by setting up a handle on a high cable pulley machine, then face the machine and grab the handle with an underhand grip.2.) Pull down so that your elbow is tucked in at your side and hand is around chest level, then slowly extend your arm down as far as possible, squeezing your tricep and hold for a count.3.) Return back to the starting position.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Cable One-Arm Tricep Pushdown',
        'Triceps,Shoulders',
        'Strength',
        'Machine - Strength',
        'Steps :1.) Start by standing in front of a cable pulley machine grasping a handle with an overhand grip.2.) Slowly extend your arm down, keeping your elbow at your side, until your forearm and hand reaches your upper thigh.3.) Squeeze with your triceps for a count, then return back up to the starting position.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Cable One-Arm Tricep Pushdown (Reverse Grip)',
        'Triceps',
        'Strength',
        'Machine - Strength',
        'The reverse grip tricep pushdown exercise is the reverse version of the tricep pushdown exercise that helps isolate the tricep muscle.1.) Start by standing in front of a cable machine and attaching a bar to the high pulley.2.) Grab onto the handle with a palm-up grip and keeping your elbows in at your sides.3.) Slowly pull the handles down towards your thighs, isolating the tricep and hold this position for a count.4.) Return back to the starting position and repeat for as many reps and sets as desired.'
    ),
    (
        'Cable Overhead Curl',
        'Biceps',
        'Strength',
        'Machine - Strength',
        'The overhead cable curl exercise helps isolate and define the biceps.1.) Start off by attaching a stirrup handle to each side of two high pulley cable machines and grab the handles with an under-hand grip (palms up), standing in between the machines with your feet shoulder width apart as this will be your starting position.2.) Once in position extend your arms out to your sides, keeping your elbows steady and then slowly curl your biceps towards the side of your head, isolating and squeezing the biceps.3.) Hold this position for a count while squeezing your biceps and then return back to the starting position.'
    ),
    (
        'Cable Overhead Curl (Stability Ball)',
        'Biceps',
        'Strength',
        'Machine - Strength',
        'Steps :1.) Start by setting up handles on two cable pulley machines and placing an exercise ball in between the machines.2.) Place the handles in a position where it is at shoulder level when you sit down on the exercise ball.3.) Grab the handles with an underhand grip and sit down on the exercise ball, keeping your body straight up, and arms extended out towards your sides.4.) Slowly curl the cables up towards your head, isolating the biceps, and squeeze.5.) Hold for a count then return back to the starting position.6.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Cable Pallof Press with Rotation',
        'Core,Chest,Shoulders',
        'Strength',
        'Machine - Strength',
        'Steps :1.) Start off by connecting a cable to a high pulley cable machine at shoulder height level and stand to the side of the machine, grasping the cable with both hands.2.) Slowly pull the cable in towards your chest and squeeze your pecs, hold this position for a count then push the cable back out in front of your chest.3.) Then, while squeezing your abs, twist through your hips in the opposite direction of the machine so that you get a full rotation and feel a stretch in your abdominals.4.) Return back to the starting position and repeat for as many reps and sets as you desire.'
    ),
    (
        'Cable Preacher Curl',
        'Biceps,Forearms',
        'Strength',
        'Machine - Strength',
        'The cable preacher curl exercise uses a special bench to support the triceps and isolate the biceps to build toner and bigger arms.1.) Start by placing a padded preacher arm curl bench in front of a cable machine and attaching a short bar to the bottom pulley.2.) Rest your arms against the bench and extend them fully.3.) With a narrow grip, grab the bar underhand (palm up) and pull it towards your head.4.) Hold for a count, isolating and squeezing the biceps, and then lower the bar back to starting position.5.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Cable Pull Through',
        'Glutes,Lower Legs,Upper Legs',
        'Strength',
        'Machine - Strength',
        'Steps :1.) To begin this exercise; start off standing only a few feet from the cable machine holding the rope in between your legs just underneath your glutes.2.) Then take the rope, keeping your knees slightly bent, pull the rope through with only the use of your hips. 3.) Refrain from using your shoulders or arms to pull.4.) Repeat this exercise for as many repetitions as needed.'
    ),
    (
        'Cable Pulldown (Underhand)',
        'Back,Biceps',
        'Strength',
        'Machine - Strength',
        'The underhand pull down exercise exercise works the muscles of both the lats, lower back and triceps.Steps :1.) Sitting upright with your abs drawn in grasp a pull down bar with and underhand grip shoulder width apart.2.) Pull the bar down till the bar reaches your upper chest, keeping your elbows close to your body.3.) Slowly return the bar to the starting position.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Cable Pulldown Bicep Curl',
        'Biceps',
        'Strength',
        'Machine - Strength',
        'Steps :1.) Start by sitting on a lat pulldown machine, with your knees underneath the padding, feet flat on the floor and hands gripping the bar with a close underhand grip.2.) Slowly curl the bar down and behind your head, isolating your biceps, and hold for a count.3.) Then return back to the starting position.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Cable Pullover (Supine)',
        'Back,,Triceps',
        'Strength',
        'Machine - Strength',
        'Steps :1.) Start by setting up a flat bench next to a low pulley cable machine, with a straight bar extension attached.2.) Lay down with your back on the bench and your head up near the machine, grabbing the bar in an overhand grip with your palms facing towards you.3.) Keep your arms straight and pull your hands up and forward so that your arms are creating about a 45-degree angle towards your feet and you feel a stretch in your shoulders and lats.4.) Hold this position for a count then return back to the start.5.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Cable Rear Lateral Raise',
        'Shoulders,Back,',
        'Strength',
        'Machine - Strength',
        'The cable rear lateral raise is a variation and different take on the standard lateral raise exercise.Steps :1.) Start by placing a bench between two cable machine and grip the handle of the machines to that your arms are crossed behind your back.2.) Grab onto the left pulley with your right hand and the right pulley with your left hand, then sit down on the bench with your feet forward and arms crossed under your thighs.3.) Slowly lean forward until your chest is either touching or just above your knees, then pull your arms out to your sides, concentrating on using your shoulders.4.) Continue to raise our arms until they are parallel with the ground, hold for a count then return back to the starting position.'
    ),
    (
        'Cable Rear Pulldown (Wide Grip)',
        'Back,Shoulders',
        'Strength',
        'Machine - Strength',
        '1.) Start by sitting on a bench that has a pulldown bar or on a lat-pulldown machine.2.) Place each of your hands on the bar so that it is about a foot from your head and then slowly pull down the bar behind your back.3.) Slowly pull down until the bar is at the base of your neck and squeeze your shoulder muscles.4.) Hold this position for a count then return back up to the starting position.Tips : 1.) Make sure that you do not do too much weight or weight that is unmanageable as that can lead to injury or spine damage.'
    ),
    (
        'Cable Reverse Crossover',
        'Back',
        'Strength',
        'Machine - Strength',
        'Steps :1.) Start by setting up handles on a cable pulley machine at chest level height and stand up straight in between both machines.2.) Grab onto the handles with opposite handles and extend them out in front of your body so that your hands are completely extended out to the sides, this will be your starting position.3.) Slowly let the cables return inward so that you are hugging your body and feeling a stretch in your back.4.) Squeeze and hold for a count.5.) Return back to the starting position.6.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Cable Reverse Crunch',
        'Core',
        'Strength',
        'Machine - Strength',
        '1.) Begin by taking an ankle strap and connecting it to a low pulley cable machine.2.) Sit down in front of the machine and attach the cable to your ankles, then lie down and elevate your legs up bending your knees at a 90-degree angle.3.) Keep your hands behind your head and bring your knees inward towards your core until you feel tension on your abs.4.) Hold this position for a count then slowly bring your hips and legs back to the 90 degree angle and repeat for as many reps and sets desired.'
    ),
    (
        'Cable Reverse Curl',
        'Biceps',
        'Strength',
        'Machine - Strength',
        'Steps :1.) Start by attaching a straight bar to a low pulley and stand up straight with feet shoulder width apart.2.) Hold onto the bar with an overhand grip, elbows close to your sides and then slowly curl the bar up towards your chest.3.) Make sure you are keeping it in a reverse grip and as soon as you reach the top and feel tension on your bicep, hold for a few seconds and then return back to the starting position.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Cable Reverse Curl',
        'Biceps',
        'Strength',
        'Machine - Strength',
        '1.) Start by grabbing onto a cable bar with a shoulder-width overhand grip.2.) Keep your elbows down to your side and then raise the bar up towards your face, squeezing and isolating the biceps.3.) Hold this position for a count and then return back to the starting position.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Cable Reverse Fly',
        'Shoulders',
        'Strength',
        'Machine - Strength',
        '1.) Start by setting up handles on two low pulley cable machines, stand in between the machines and grab the handles with opposite hands.2.) Bend down so that your back is parallel with the ground and bring the handles right below your chest at around knee level.3.) Then slowly extend your arms out, squeezing your shoulders so that your arms at head level and hold for a count.4.) Return back to the starting position.5.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Cable Reverse Grip Curl',
        'Biceps',
        'Strength',
        'Machine - Strength',
        'Steps :1.) Start by standing in front of a low pulley cable machine with your feet shoulder width apart and attach a bar to the machine.2.) Grab the bar in an overhand position with your hands about shoulder width apart and then slowly curl the bard up towards your collarbone, isolating the bicep.3.) Hold for a count then return back to the starting position and repeat for as many reps and sets as desired.'
    ),
    (
        'Cable Reverse Grip Curl',
        'Forearms,Biceps',
        'Strength',
        'Machine - Strength',
        '1.) Start by setting up either a straight or EZ bar on a low pulley cable machine and grab the bar using a reverse shoulder width grip.2.) Keep your elbows tucked in at your sides and slowly raise the bar up towards your shoulders, squeezing your forearms and hold for a count.3.) Return back to the starting position.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Cable Reverse Grip Tricep Extension',
        'Triceps',
        'Strength',
        'Machine - Strength',
        'Steps :1.) Begin by attaching a bar to a low pulley cable machine and then lie with your back on an inline bench with your feet flat on the floor.2.) Grab the bar and hold it just over your eyes with your arms extended and elbows bent.3.) Begin to bend your elbows straight out and extend the bar out straight in front of you until you feel a stretch in your triceps.4.) Hold this position for a count and return back to the start.5.) Repeat for as many reps and sets desired.'
    ),
    (
        'Cable Reverse Preacher Curl',
        'Biceps',
        'Strength',
        'Bench',
        'Steps :1.) Start by setting up either an EZ bar or straight bar attachment to a low pulley cable machine and placing a preacher bench in front of the machine.2.) Grab onto the handle with an overhand grip, then sit down on the bench with your forearms rested over the padding and feet flat on the floor in front of you.3.) Keep your arms extended out in front of you then slowly curl the bar up towards your chest, isolating your bicep and squeeze.4.) Hold for a count then return back to the starting position.5.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Cable Reverse Preacher Curl',
        'Forearms,Biceps',
        'Strength',
        'Machine - Strength',
        'Steps :1.) Start by setting up a straight bar on a low pulley cable machine with a preacher bench attached or bringing a preacher bench close to the machine.2.) Grab onto the bar with a reverse grip and rest your arms on the padding.3.) Slowly curl the bar straight up towards your shoulders, squeezing your forearms and hold for a count.4.) Return back to the starting position.5.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Cable Reverse Wood Chop',
        'Core',
        'Strength',
        'Machine - Strength',
        'Steps :1.) Start by standing with your feet shoulder width apart and your knees slightly bent holding a low pulley cable at about knee level to one side of your body.2.) Slowly bring the cable up in a diagonal direction, raising the cable over your head and shoulders, squeezing your oblique muscles.3.) Return back to the starting position and repeat for as many reps and sets as desired.'
    ),
    (
        'Cable Rope Crunch',
        'Core',
        'Strength',
        'Machine - Strength',
        'Steps :1.) Start by kneeling in front of a high pulley cable machine with a rope attachment and grasp the rope with both hands.2.) Slowly pull down on the rope, squeezing with your abdominals, feeling the tension increase and you lower your body towards the floor, keeping your hands and the rope behind your head.3.) Hold for a count as soon as you reach the bottom, then slowly return to the starting position.4.) Repeat for as many reps and sets desired.'
    ),
    (
        'Cable Rope Deltoid Row',
        'Shoulders,Biceps,Back',
        'Strength',
        'Machine - Strength',
        '1.) To begin this exercise; start off in the same position as a seated cable row in front of a cable machine.2.) Taking an overhead rope, grab it with an overhand grip keeping your back straight and knees bent.3.) Then pull the cable towards your chest bringing your elbows pushed out towards the sites holding on for a few seconds squeezing tightly.4.) Return back to the starting position.5.) Repeat this exercise for as many repetitions as needed.'
    ),
    (
        'Cable Rope Face Pull',
        'Back,Back',
        'Strength',
        'Machine - Strength',
        'Steps :1.) Start by facing a high pulley cable machine with either a rope or dual handles connected to the machine.2.) Grab onto the handles and pull the weight directly towards your face, using your shoulders, and separating your shoulders as you pull the weights back.3.) Hold for a count then return back to the starting position.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Cable Rope Hammer Curl',
        'Biceps,Forearms',
        'Strength',
        'Machine - Strength',
        'The hammer curls with a rope exercise a great exercise that uses a rope with a cable machine to isolate the biceps and build bigger arms.1.) Start by attaching a rope to a cable pulley to the bottom of the weight stack and stand in front of the machine with your feet shoulder width apart, your knees slightly bent and your abs drawn in.2.) Grab the rope with a close underhand grip (palms facing up).3.) Lower your arms fully to above your thighs and bending only your elbows, raise the rope to your upper chest.4.) Hold for a count, squeezing the biceps and then return to the starting position.5.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Cable Rope High Pulley Tricep Extension',
        'Triceps',
        'Strength',
        'Machine - Strength',
        'Steps :1.) Start by setting up a high cable pulley machine with a rope extension and stand with your back facing the machine, grabbing the rope with a neutral grip.2.) Bend down at the waist so that your body is almost parallel with the floor and keep a staggered position so that one leg is in front of the other.3.) Keeping your hands close together, push the rope out in front of you until your arms are fully extended, squeezing your triceps and hold for a count.4.) Return back to the starting position.5.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Cable Rope Incline Row',
        'Back,Biceps',
        'Strength',
        'Machine - Strength',
        'Steps :1.) Start by taking an incline bench and placing it in front of a cable pulley machine with the high end facing the rope extension that is attached to the machine.2.) Lay down with your chest flat on the bench and grab the rope with a neutral grip then slowly pull the rope in towards your chest.3.) Squeeze your back as the rope reaches your chest and hold for a count.4.) Return back to the starting position.5.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Cable Rope Incline Tricep Extension',
        'Triceps',
        'Strength',
        'Machine - Strength',
        'Steps :1.) Start by setting up an incline bench in front of a low pulley cable machine and attach a rope extension for the exercise.2.) Sit down facing away from the machine, holding the rope with an overhand grip behind your head as this will be your starting position.3.) Slowly push the rope above your head, squeezing your triceps and hold for a count.4.) Return back to the starting position.5.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Cable Rope Lat Pulldown',
        'Back,Biceps,Shoulders',
        'Strength',
        'Machine - Strength',
        'Steps :1.) Start by setting up a rope extension on a lat pulldown machine, grabbing it with a neutral grip and sitting down on the machine with your knees rested underneath the pads.2.) Slowly, while keeping your body straight and upright, pull the rope down using and squeezing your lats as far as possible.3.) Hold for a count then return back to the starting position.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Cable Rope One-Arm Preacher Curl (Hammer)',
        'Biceps',
        'Strength',
        'Machine - Strength',
        'Steps :1.) Start by setting up a rope extension attachment to a low pulley cable machine and placing a preacher bench in front of the machine.2.) Grab hold of the rope with one arm in a neutral hammer grip, then sit down on the bench with your forearm rested over the padding and feet flat on the floor in front of you.3.) Keep your arm extended out in front of you then slowly curl the bar up towards your chest, isolating your bicep and squeeze.4.) Hold for a count then return back to the starting position.5.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Cable Rope Overhead Tricep Extension',
        'Triceps',
        'Strength',
        'Machine - Strength',
        'The cable rope overhead triceps extension exercise works the tricep muscle by reaching behind your neck and helping build stronger and bigger arms.1.) Start by standing with your feet shoulder-width apart, keeping your back straight and abs tightly drawn in.2.) Grab and hold onto a rope extension with both hands with your palms facing up and raise the rope over your head as this will be your starting position.3.) Slowly lower the rope attachment in an arc motion behind your head, feeling a stretch and isolating your tricep muscles.4.) Hold this position for a count, then slowly raise the rope back up to the start.5.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Cable Rope Preacher Curl (Hammer)',
        'Biceps',
        'Strength',
        'Machine - Strength',
        '1.) Start by setting up a rope extension attachment to a low pulley cable machine and placing a preacher bench in front of the machine.2.) Grab onto the rope with a neutral hammer grip, then sit down on the bench with your forearms rested over the padding and feet flat on the floor in front of you.3.) Keep your arms extended out in front of you then slowly curl the bar up towards your chest, isolating your bicep and squeeze.4.) Hold for a count then return back to the starting position.5.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Cable Rope Pull-Up',
        'Back,Biceps',
        'Strength',
        'Machine - Strength',
        'Steps :1.) Start by hanging a rope extension over the top of a pull-up bar, then grab it with a neutral grip, palms facing inward.2.) Holding tightly onto the rope, slowly pull yourself up until your hands are almost touching your upper chest.3.) Squeeze with your lats and hold for a count.4.) Return back to the starting position.5.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Cable Rope Pullover (Supine)',
        'Chest,Shoulders,Triceps',
        'Strength',
        'Machine - Strength',
        'Steps :1.) Start by setting up a rope extension on a low pulley cable machine then lay down on the back with your back towards the machine.2.) Grab onto the rope with both hands keeping them extended behind your head with elbows bent as this will be your starting position.3.) Slowly pull your hands up and across the top of your head and extend forward over your chest and squeeze.4.) Hold for a count then return back to the starting position.5.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Cable Rope Row to Neck',
        'Shoulders,Biceps,Back',
        'Strength',
        'Machine - Strength',
        '1.) To begin this exercise; start off by sitting down on a low pulley row machine and grab the ends of the rope with a palms-down grip keeping your back straight and knees slightly bent.2.) Take the rope and start to lift it towards your neck, bending your elbows on the way up keeping your arms parallel to the floor.3.) Hold this position for a few seconds then return back to the starting point.4.) Repeat this exercise for as many repetitions as needed'
    ),
    (
        'Cable Rope Seated Crossover Row',
        'Back,Biceps,Shoulders',
        'Strength',
        'Machine - Strength',
        'Steps :1.) Start by attaching a rope extension to a low pulley cable machine and sitting down in front of it with your feet firmly on the rests. 2.) Grab the left side of the rope with your right hand and the right side with your left.3.) Slowly pull the weight towards you and as you pull, uncross your hands to create a neutral grip and pull the rope to your sides, squeezing your back, and hold for a count.4.) Return to the starting position.5.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Cable Rope Seated Row',
        'Back',
        'Strength',
        'Machine - Strength',
        'Steps :1.) Start by setting up a rope extension attachment to a seated row machine, then sit on a weight plate or step onto of the bench and place your feet on the rests in front of you.2.) Grab onto the rope with a neutral grip, keeping your arms extended out and this will be your starting position.3.) Slowly pull the rope, bringing your arms in towards your sides and squeeze with your back and lat muscles.4.) Hold for a count then return back to the starting position.5.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Cable Rope Seated Row',
        'Back,Biceps,Shoulders',
        'Strength',
        'Machine - Strength',
        '1.) Start by attaching a rope extension to a low pulley cable machine and sitting down in front of it, with your feet firmly on the rests and grabbing the rope with a neutral grip.2.) Slowly pull the weight towards you to your sides, squeezing your back, and hold for a count.3.) Return to the starting position.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Cable Rope Tricep Extension (Supine)',
        'Triceps',
        'Strength',
        'Machine - Strength',
        'Steps :1.) Start by setting up a rope attachment on a low pulley cable machine and laying on the floor with your head facing towards the machine and knees bent.2.) Hold the rope with a neutral grip, keeping it close together, elevated behind your head as this will be your starting position.3.) Slowly push the rope up and out in front of your body so that your arms are completely extended and squeeze your triceps.4.) Return back to the starting position.5.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Cable Rotation (Stability Ball)',
        'Core',
        'Strength',
        'Machine - Strength',
        '1.) Begin by sitting down on a stability ball. Keep your feet about shoulder width apart and maintaining a straight spine next to a cable machine.2.) Grab a cable with both of your hands then bring your arms out straight in front of you.3.) Slowly rotate your trunk to the opposite side of the machine, feeling tension in your abs, then return back to the starting position and then towards the machine.4.) Repeat from side to side for as many reps and sets as desired.'
    ),
    (
        'Cable Rotation (Stability Ball)',
        'Core',
        'Strength',
        'Machine - Strength',
        'Steps :1.) Start by placing an exercise ball next to a cable machine and sitting up straight with your feet planted firmly on the floor in front of you.2.) Grab the cable with both hands and extend it out in front of you as this will be the starting position.3.) Using your core, slowly rotate outwards of the machine until you feel tension in your abs.4.) Hold for a count then bring the cable back to the starting position.5.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Cable Rotational Crunch (Kneeling)',
        'Core',
        'Strength',
        'Machine - Strength',
        'Steps :1.) Start by placing a rope attachment to a high pulley cable machine then stand with your back facing the machine and grabbing the rope positioning it behind your head. Next, position yourself in a kneeling position with both knees on the floor.2.) Keeping your elbows bent by your head, slowly crunch down in a twisting motion so your right elbow comes down towards your left knee until you feel a stretch in your abs then hold for a count.3.) Return back to the starting position and continue in the opposite direction.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Cable Rotational Crunch (Supine)',
        'Core',
        'Strength',
        'Machine - Strength',
        'Steps :1.) Start by attaching a rope to a low pulley cable machine and laying with your back flat on the floor and your head in the direction of the rope.2.) Keep your legs bent with your feet about shoulder width apart and grap the rope and pull it to just above your head.3.) Slowly lift your body up so that your shoulder blades are up off of the floor and then bring one of your elbows to the opposite side of your body until you feel a stretch in your abs and hold for a stretch.4.) Return to the starting position and repeat in the opposite direction.5.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Cable Russian Twist (Stability Ball)',
        'Core',
        'Strength',
        'Machine - Strength',
        'Steps :1.) Start by connecting a cable to a low pulley cable machine and then lie on a stability ball right to the side of the machine with your back on the top of the ball.2.) Grab the handle with both hands and extend it out in front of your chest, then squeeze your abs and twist in the opposite direction of the machine, until you feel tension in your obliques as you reach the opposite side.3.) Hold for a count then return back to the start and repeat for as many reps and sets as desired.'
    ),
    (
        'Cable Seated Crunch',
        'Core',
        'Strength',
        'Machine - Strength',
        'Steps :1.) Sit on a flat bench with your back facing a high pulley with a rope attachment.2.) Grasp cable rope attachment3.) While keeping hips still perform a crunch with your abs while holding the rope at the backside of your head.  4.) Sit back up while holding the rope at the backside of your head.  5.) Repeat for the desired amount of reps.Tips : 1.) For a more intense work out go at a slower pace.'
    ),
    (
        'Cable Seated Curl',
        'Biceps',
        'Strength',
        'Machine - Strength',
        'Steps :1.) Start by sitting up straight on a bench in front of a low pulley cable machine with a straight bar attached to the machine, with your arms rested at your sides and feet flat on the floor.2.) Grab the bar in an underhand grip then slowly raise it up towards your shoulders, isolating the bicep and hold for a count.3.) Return back to the starting position.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Cable Seated Overhead Curl',
        'Biceps',
        'Strength',
        'Machine - Strength',
        'Steps :1.) Start by setting up handles on two upper pulley cables machines and placing a vertical bench in between both machines.2.) Grab each handle with an overhand grip and sit down on the middle of the bench keeping your arms extended out towards your sides.3.) Slowly curl the cables in towards your head, isolating the bicep, and squeeze.4.) Hold for a count then return back to the starting position.5.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Cable Seated Row',
        'Back,,Shoulders',
        'Strength',
        'Machine - Strength',
        'Targeting the large muscles in your back, the cable seated rows are an effective and beneficial back exercise.1.) Start by sitting at a low pulley machine with your feet rested against the footrests or floor in front of you and keeping your feet slightly bent.2.) Keeping your abs tight and your back straight, sit in an upright position.3.) Slightly lean forward and grab onto the pulleys4.) Once you have a grip on the pulleys, keep your elbows at your chest and slowly bring them back.5.) Pause at the top of the exercise and squeeze your back muscles.6.) Hold for a count then return back to the starting position.Tips :1.) It is important to keep  your back upright throughout the entire exercise.'
    ),
    (
        'Cable Seated Row to Neck',
        'Shoulders,Shoulders',
        'Strength',
        'Machine - Strength',
        'Steps :1.) Start by setting up either a V-Bar or Rope Extension on a low pulley cable machine and sit down flat on the floor or on a bench with your feet facing towards the machine, grasping the rope and bringing it to knee level.2.) Slowly, while keeping your body still, pull the rope in towards your chest and up to your neck, squeezing your shoulders and hold for a count.3.) Return back to the starting position.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Cable Seated Shoulder Press',
        'Shoulders,Triceps',
        'Strength',
        'Machine - Strength',
        'Steps :1.) Start off by placing a bench in front of a low cable pulley machine or placing a bench in between two low cable pulley machines (depending on what your gym currently has).2.) Grab the handles and bring the cables to shoulder level, keeping your arms bent in a 90 degree angle.3.) Slowly extend through your elbows and push the handles up over your head and towards the ceiling until you feel a stretch in your shoulders.4.) Hold for a count then return back to the starting position.5.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Cable Seated Shrug',
        'Back,Shoulders,Forearms',
        'Strength',
        'Machine - Strength',
        'Steps :1.) Start by setting up a straight or V-Bar on a low pulley cable machine and sit up straight, feet extended out towards the machine and holding the bar at waist level.2.) While keeping your body still, slowly shrug the bar up as high as you can, pulling your shoulders and hold for a count.3.) Return back to the starting position.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Cable Shoulder Extension',
        'Back,Triceps',
        'Strength',
        'Machine - Strength',
        'The Cable shoulder extension exercise helps build the lats, lower back and also works the tricep muscles.Steps :1.) Start off grabbing onto a wide-grip pull down bar with a wide grip so that your hands are on the portion of the bar which curves down, keeping your body up straight and abs tightly drawn in.2.) Keeping a neutral wrist and a slight bend in your elbow, pull the bar down until it touches your upper thighs, feeling a stretch in your lats and tricep muscles. Keep the arms straight throughout.3.) Hold this position for a count then slowly bring the bar back up to the starting position.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Cable Shoulder Extension',
        'Back',
        'Strength',
        'Machine - Strength',
        'The cable shoulder extension exercise is another great way to work the back, specifically the latissiumus dorsi muscle.1.) Begin by standing in front of a cable machine and attach a short bar to a high pulley.2.) Take hold of the handle with an overhand grip.3.) Keeping your arms straight and elbows at your side as you push the handle down towards your thighs.4.) Pause for a moment and then return to the starting position.5.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Cable Shoulder Press',
        'Shoulders,Triceps',
        'Strength',
        'Machine - Strength',
        'Steps :1.) Start by standing in between a low pulley cable machines with two cables attached to the machine.2.) Bend down, grab the cables and then bring them to your shoulders as this will be your starting position.3.) Keeping your back straight, head up and chest up, extend through your elbows and push the handles up towards the ceiling over your head and feel the stretch in your shoulders.4.) Hold for a count at the top then return back to the starting position.5.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Cable Shrug',
        'Back,Shoulders,',
        'Strength',
        'Machine - Strength',
        'The cable shrug exercise is a variation of the standard shrug using the cable machine and is better suited for people who are used to doing drop sets or not sure/comfortable with the weight they are doing.1.) Start by attaching a flat shoulder-width bar to a low cable pulley, then stand in front of the machine shoulder-width apart.2.) Keep a slight bend in your knees and your abs tight to help protect and stabilize your lower back.3.) Grab the bar attached to the pulley machine at waist height and then slowly shrug your shoulders towards your ears, contracting your muscles.4.) Once you reach the top of the position, hold for a count on the contraction and then return back to the starting position.Tips :1.) Prevent from rolling your shoulders as this is incorrect form and can result in injury.2.) Do not perform this exercise if you are experiencing any shoulder pain as you are at the risk of further injuring yourself.'
    ),
    (
        'Cable Shrug (Supine)',
        'Back,Shoulders,Forearms',
        'Strength',
        'Machine - Strength',
        'Steps :1.) Start by setting up a straight bar on a low pulley cable machine with your back flat on the floor, feet extended out towards the machine and holding the bar at waist level.2.) Slowly while keeping your body still, shrug the bar up as high as you can, squeezing your shoulders and hold for a count.3.) Return back to the starting position.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Cable Side Bend',
        'Core',
        'Strength',
        'Machine - Strength',
        'Steps :1.) Start by standing up straight and sideways next to a low pulley single handle attachment and grip the handle.2.) After adjusting your weight and in position, slowly bend to the opposite direction of the low pulley machine and contract with your abs.3.) Return back to the starting position and repeat for as many reps and sets desired.4.) Switch arms and sides and repeat the steps over.'
    ),
    (
        'Cable Side Lateral Raise',
        'Shoulders,Back',
        'Strength',
        'Machine - Strength',
        '1.) To begin this exercise; start off by bending over slightly next to a low pulley cable machine positioned sideways.2.) Keep your chest at a parallel level with the floor then take your right arm and grab the handle of the cable.3.) Pull the cable out and to the right so that your arm is at shoulder level and hold on for a few seconds.4.) Return back to the starting position.5.) Repeat this exercise for as many repetitions as needed.'
    ),
    (
        'Cable Single-Leg Calf Raise',
        'Lower Legs',
        'Strength',
        'Machine - Strength',
        'Steps :1.) Start by setting up either a dip belt, rope or straight bar on a low pulley cable machine and placing either a step or block in front of the machine.2.) Step onto the block with the balls of your feet on the edge and letting your heels drop down as far as possible without touching the floor.3.) Then slowly raise one of your heels up as far as possible, keeping your other leg extended behind you, and squeeze your calf.4.) Hold for a count and Return back to the starting position.5.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Cable Single-Leg Knee Raise',
        'Core,Glutes,Upper Legs',
        'Strength',
        'Machine - Strength',
        'Steps :1.) Start by placing a flat bench right in front of a low pulley cable machine and attaching ankle straps to the pulley.2.) Lay with your back flat on the bench, feet pointed towards the machine and your hands grasping the bench behind your head.3.) Slowly pull one knee up as high as you can towards your chest until you feel a stretch in your abs, keeping the other leg straight out in front of you, then return back to the starting position.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Cable Squat Curl',
        'Biceps',
        'Strength',
        'Machine - Strength',
        '1.) Begin by setting up a straight bar on a low pulley cable machine and grabbing it with an underhand grip.2.) Squat down towards the floor in a comfortable position until your thighs are parallel with the floor.3.) Keep your arms extended out in front of you with your elbows rested upon your knees and slowly curl the bar up towards your shoulders, isolating the biceps, and hold for a count.4.) Return back to the starting position.5.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Cable Standing Curl',
        'Biceps',
        'Strength',
        'Machine - Strength',
        'Steps :1.) Start by standing in front of a low pulley machine with a straight bar attached to it.2.) Keeping your knees bent and back straight, grasp the bar with an underhand grip with your arms and hands extended.3.) Make sure that you keep your upper arms tight up against your body and then slowly curl the bar up towards your chest until you feel tension on your biceps.4.) Hold this position for a few seconds and then return back to the starting position.5.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Cable Standing Leg Curl',
        'Upper Legs',
        'Strength',
        'Machine - Strength',
        'The standing leg curl exercise works the hamstring as well as the muscles on the back of the thighs.Steps :1.) Start off standing at a leg curl machine adjust the rear footpad so it is just above your ankle.2.) Grasp the handles of the machine for support and draw your abs in.3.) Raise your foot up towards your back slowly in a controlled motion.4.) Return to the starting position and change legs.5.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Cable Standing Reverse Curl',
        'Forearms,Biceps',
        'Strength',
        'Machine - Strength',
        'Steps :1.) Start by setting up either a straight or EZ bar on a low pulley cable machine and grab the bar using an overhand reverse shoulder width grip.2.) Keep your elbows tucked in at your sides and slowly raise the bar up towards your shoulders, squeezing your forearms and hold for a count.3.) Return back to the starting position.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Cable Standing Row',
        'Back',
        'Strength',
        'Machine - Strength',
        'Steps :1.) Start by standing in front of a low pulley cable machine and grabbing onto a narrow grip.2.) Keep your knees bent and shoulder width apart then slowly pull the bar back, making sure that your elbows bend in towards the sides as you bring the bar in to your pecs.3.) Hold this position for a few seconds then return back to the starting position and repeat for as many reps and sets desired.'
    ),
    (
        'Cable Straight Arm Crossover',
        'Chest,Shoulders',
        'Strength',
        'Machine - Strength',
        '1.) Start by setting up two handles on a two high cable pulley machine and stand in between the machines with your hands extended out gripping the handles above your body.2.) Slowly bring the handles down and together in front of your body, squeezing your chest and hold for a count.3.) Return the handles back to the starting position.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Cable Tricep Extension',
        'Triceps',
        'Strength',
        'Machine - Strength',
        'The cable standing triceps extension exercise works the tricep muscles by extending your arms overhead.1.) Begin by standing with your feet shoulder-width apart, back straight and your abs drawn in.2.) Hold cable handles or rope in both hands, with your palms facing each other.3.) Extend your elbows, raising the handles overhead, and slowly lower back down feeling a stretch in your tricep muscles.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Cable Tricep Kickback',
        'Triceps',
        'Strength',
        'Machine - Strength',
        'Steps :1.) Start by setting up a handle on a low pulley cable machine, facing the machine with your back bent keeping it parallel with the ground.2.) Grab the handle, bring it to your side and tuck your elbow in towards your body.3.) Slowly extend your arm back as far as possible, squeezing your tricep and hold for a count.4.) Return back to the starting position.5.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Cable Tricep Kickback',
        'Triceps',
        'Strength',
        'Machine - Strength',
        'Steps :1.) Start by setting up a low pulley cable machine with either a long rope or two single grip handles. Next, grasp either the rope or handles with a neutral grip, and take a few steps back from the machine.2.) Slowly bend at your knees and lower your body towards the floor so that your back is parallel to the floor and elbows are tucked in at your sides.3.) Then extend your arms far back as possible, squeezing your triceps, and hold for a count.4.) Return back to the starting position.5.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Cable Tricep Kickback (Reverse Grip)',
        'Triceps',
        'Strength',
        'Machine - Strength',
        'Steps :1.) Start by setting up a handle on a low pulley cable machine, grabbing one of the handles with an underhand grip, and keeping your back bent so that it is parallel to the floor.2.) Bring your elbow up as high as possible and tight to your side then extend it out, squeezing your tricep and holding for a count.3.) Return back to the starting position.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Cable Tricep Pushdown (Rope)',
        'Triceps',
        'Strength',
        'Machine - Strength',
        'The rope triceps pushdown exercise uses a rope to target the triceps muscle for better definition and bigger arms.1.) Start off standing in front of a cable machine, attaching a rope to the high pulley and grabbing the attachment with an overhand (palms down) grip.2.) Keeping your abs drawn in, back straight and elbows in at your sides, push the rope down towards your thighs.3.) As you push down towards your thighs, split the rope apart at the bottom and isolate the tricep muscle.4.) Hold this position for a count and return back up to the starting position.5.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Cable Tricep Pushdown (V-Bar)',
        'Triceps',
        'Strength',
        'Machine - Strength',
        'The triceps pushdown v-bar exercise uses the v-shaped bar to target the tricep muscle and build bigger arms.1.) Start by standing in front of a cable machine and attaching a v-bar attachment to a high pulley.2.) Grab onto the v-bar with an overhand (palms facing down) grip, keeping your abs drawn in tightly and back straight as this will be your starting position.3.) Making sure that you keep your elbows in at your sides and push the bar straight down towards your thighs, until you feel a stretch in your tricep muscle.4.) Hold this position for a count, isolating the tricep and then return back to the start.5.) Repeat for as many reps and sets as desired.Tips : 1.) You are able to place one foot in front of the other for a better stance.'
    ),
    (
        'Cable Upper Chest Crossover',
        'Chest,Shoulders',
        'Strength',
        'Machine - Strength',
        'Steps :1.) Start by setting up handles on a high cable pulley machine, standing in the middle of the machines, grabbing the handles with both of your hands and keeping them extended above your head.2.) Slowly move your arms in a circular motion and bring them out in front of your body at head level.3.) Hold for a count then return back to the starting position.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Cable Upper Row',
        'Back',
        'Strength',
        'Machine - Strength',
        '1.) Start off by standing in front of a high pulley cable machine and grabbing it with a narrow grip.2.) Keep your knees bent and shoulder width apart, slowly pull the bar back and down towards your pecs; making sure that your elbows bend in towards the sides as you bring the bar in to your chest.3.) Hold this position for a few seconds then return back to the starting position and repeat for as many reps and sets desired.'
    ),
    (
        'Cable Upright Row',
        'Shoulders,,',
        'Strength',
        'Machine - Strength',
        'Cable upright rows are a good exercise for strengthening your upper back.1.) Attach a straight bar to the pulley on the floor. Tighten your abs and stand with your feet shoulder width apart. 2.) Grasp the bar with an overhand grip. Your palms will be facing your body and be fairly close to your waist.3.) Next, raise the bar toward your chest. Pause at the top and return the bar to the starting position.Tips : 1.) Keep your body and your wrists straight. Your wrists should even be straight at the top part of this exercise.'
    ),
    (
        'Cable Upright Row (Supine)',
        'Shoulders,Biceps',
        'Strength',
        'Machine - Strength',
        'Steps :1.) Start by setting up a straight bar on a low pulley cable machine and laying down with your back flat on the ground, feet facing towards the machine and grabbing the bar with an overhand grip.2.) Slowly elevate the bar in an upright row motion towards your chest, pushing your elbows out to the sides as the bar comes up and hold for a count.3.) Return back to the starting position.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Cable Upward Chop',
        'Core',
        'Strength',
        'Machine - Strength',
        '1.) Start by connecting a cable to a low pulley cable machine, grabbing the cable with both hands and stand to the side of the machine with feet shoulder width apart.2.) Slowly pull the handle up, extending through your hips and twisting your torso, and across your body until your arms are fully extended over your head.3.) Hold this position for a count, squeezing your abs, then release back to the starting position.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Cable V Bar Pulldown',
        'Back,Biceps',
        'Strength',
        'Machine - Strength',
        'The V-Bar pull down exercise is another great exercise for helping sculpt the lats.1.) Start by attaching a v-bar to a pull down pulley cable machine and sit upright with your abs drawn in tightly, grabbing onto the bar with an overhand grip.2.) Pull the bar straight down to your upper chest in a controlled manner until you feel a stretch in your lat muscles..3.) Hold for a count and then slowly return the bar to starting position.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Cable V-Bar Row',
        'Back',
        'Strength',
        'Machine - Strength',
        'Steps :1.)  Start by setting up a V-Bar attachment to a high pulley cable machine and stand in front of the machine with your feet shoulder width apart.2.) Grab the handles with a neutral grip and slowly pull the bar in towards your chest, feeling a stretch in your back and lat muscles.3.) Squeeze and hold for a count.4.) Return back to the starting position.5.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Cable Wood Chop',
        'Core',
        'Strength',
        'Machine - Strength',
        'Steps :1.) Begin by standing with your feet shoulder width apart and your knees slightly bent, holding a high pulley cable at about shoulder level to one side of your body.2.) Slowly bring the cable downward in a diagonal direction, pressing the pulley into your opposite thigh, squeezing your oblique muscles.3.) Return back to the starting position and repeat for as many reps and sets as desired.'
    ),
    (
        'Cable Wrist Curl',
        'Forearms',
        'Strength',
        'Machine - Strength',
        '1.) Sit down on the bench with your arms resting on your thighs.  2.) Grab the bar attached to the cables.3.) Pull the bar towards your chest while keeping your elbows on your thighs.  4.) When the bar is held to your chest hold for a few seconds before letting back down.  5.) Repeat for the desired amount of reps and sets.'
    ),
    (
        'Cable Wrist Curl (Reverse Grip)',
        'Forearms',
        'Strength',
        'Machine - Strength',
        'Steps :1.) Start by setting up either a straight or EZ bar on a low pulley cable machine, sit on a bench positioned in front of the machine and grab the bar using a reverse shoulder width grip.2.) Keep your elbows tucked in at your sides and slowly raise the bar up so that you feel a stretch in your arms, squeezing your forearms and hold for a count.3.) Return back to the starting position.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Calf Machine Shoulder Shrug',
        'Back,Shoulders,',
        'Strength',
        'Machine - Strength',
        '1.) To begin this exercise; start off with your shoulders underneath the shoulder pads on the machine keeping your body straight and arms at your sides.2.) Push up with your shoulders so that the machine pads are parallel with your ears and hold for a few seconds.3.) Return back to the starting position.4.) Repeat this exercise for as many repetitions as needed'
    ),
    (
        'Calf Press On Leg Press',
        'Lower Legs',
        'Strength',
        'Machine - Strength',
        'The calf press on a leg press exercise uses a leg press machine to help work and strengthen your calf muscles.1.) Sit down on a Leg Press Machine and press the plate up as if you were performing a leg press.2.) Slide your feet down so that the balls of your feet are pressing against the rack (with your heels hanging free),3.) Keeping the handles locked, press up and flex your toes and then slowly bring your toes back towards your body (dorsiflex).4.) Perform these movements slowly for maximum benefit.Tips : 1.) Use lighter weight on this exercise than you are able to lift with a leg press until you are familiar with the movements.'
    ),
    (
        'Calf Raise On A Dumbbell',
        'Lower Legs',
        'Strength',
        'Dumbbell',
        '1.) Hang on to a sturdy object for balance, perhaps a bar on a smith machine and stand on a dumbbell handle with a small plate loaded.    2.) Now roll your foot slightly forward so that you can get a nice stretch of the calf. This will be your starting position.  3.) Lift the calf as you roll your foot over the top of the handle so that you get a full extension. 4.) Exhale while doing this.    5.) Now inhale as you roll the dumbbell slightly forward and come back down.     6.) Repeat for the desired amount of reps.'
    ),
    (
        'Calf Stretch',
        'Lower Legs,Upper Legs,Core',
        'Stretching',
        'Body Only',
        'Steps :1.) Stand facing a wall and bring one leg forward using your upper body keeping your leg, neck, spine and pelvis in a straight line.2.) Then bend your arms, move your chest forward towards the wall and hold this position for 15 to 30 seconds.3.) Switch legs and repeat.'
    ),
    (
        'Calf Stretch with Rope',
        'Lower Legs,Upper Legs,Lower Legs',
        'Stretching',
        'Bands',
        '1.) Start by lying down on the ground face up and place a yoga strap over the ball of one of your feet.2.) Bend your knee and pull on the rope to extend your foot backwards, breathing out while in this motion.3.) Hold for 20 to 30 seconds, then release and start on the opposite foot.'
    ),
    (
        'Camel Pose',
        'Core,Chest',
        'Stretching',
        'Body Only',
        'Steps :1.) Start off by sitting on your knees without placing your glutes on your heels.2.) Take the palms of your hands and place them on the upper hamstrings, arch back your shoulder blades and press your hips forward.3.) Maintain this position for up to 5 breaths and then release.4.) Return back to the starting position and repeat.'
    ),
    (
        'Cat Stretch',
        'Back',
        'Stretching',
        'Body Only',
        '1.) Start by kneeling down on the floor with your feet extended behind you and your hands flat on the floor at shoulder level.2.) Slowly pull your belly in and round out your back, letting your head drop to the floor until you feel a stretch in your back muscles.3.) Hold this position for 15 to 30 seconds then return back to the starting position.4.) Repeat for as long and many reps as desired.'
    ),
    (
        'Chest and Shoulder Stretch',
        'Chest,Shoulders',
        'Stretching',
        'Others',
        'Steps :1.) Start off standing up straight with your feet shoulder width apart, holding either a broom or a bodybar in between your hands.2.) With a wide grip on the pole, hold it in front of you with your palms face down and then lift it up slowly behind your head.3.) Arch your shoulders back and continue to extend your arms until you feel a stretch on your chest then hold for 15 to 30 seconds.4.) Return back to the starting position and repeat for as many reps and duration as desired.'
    ),
    (
        'Child s Pose',
        'Core,Back',
        'Stretching',
        'Body Only',
        '1.) Begin this workout by sitting on your knees, keeping them tightly together and fold your body over your thighs. 2.) Take your forehead and rest it to the floor and let your hands stretch back towards your feet, staying relaxed in through the motion.3.) Close your eyes and relax, inhale and exhale for about 10-20 seconds letting your stomach press down on your thighs with each inhale.4.) Hold this position for as long as you are able to and then return back to the starting position.Tips : 1.) For those who have high blood pressure or feel lightheaded during this pose, rest your head on blankets, a pillow or on your folded fists.'
    ),
    (
        'Child s Pose (Stability Ball)',
        'Core,Back,Chest',
        'Stretching',
        'Exercise Ball',
        '1.) Begin by kneeling on the floor in front of a stability ball, placing your hands on the ball with your arms extended straight.2.) Roll down forward slowly so that your head is even with your arms and hold this stretch for 15 to 30 seconds.3.) Return back to the starting position and repeat this pose'
    ),
    (
        'Chin-Up',
        'Back,Biceps',
        'Strength',
        'Pullup Bar',
        'The Chin-Up exercise is one of the most basic and best exercises for building strength in the back and arms.1.) Start off by grabbing the bar with an underhand grip, letting your body hang from the bar and keeping your arms straight as this will be your starting position.2.) Once in position, slowly pull yourself up so that your chin is higher than the bar, squeezing your back muscles and lats and hold for a count.3.) Return back to the starting position and repeat for as many reps and sets as desired.Tips : 1.) Your legs should stay in line with your torso throughout this exercise.'
    ),
    (
        'Chin-Up (Close Grip)',
        'Back,Biceps,Shoulders',
        'Strength',
        'Pullup Bar',
        'Steps :1.) Start by standing in front of a pull-up bar and grabbing it with an overhand grip, keeping your hands about a foot apart.2.) Lift your body off of the floor so that your feet are elevate off of the ground and slowly pull yourself up so that your chin is above the bar.3.) Squeeze with your lats and hold for a count.4.) Return back to the starting position.5.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Chin-Up (Mixed Grip)',
        'Back,Biceps',
        'Strength',
        'Pullup Bar',
        'Steps :1.) Start by standing in front of and grabbing a pull up bar with one hand facing forward palms out and the opposite facing inward palms in.2.) Once you have a firm grip, slowly pull yourself up and squeezing on your back muscles as you reach the peak position.3.) Make sure that you keep your elbows as close to your body as possible so you can get the best contraction on your muscles.4.) Hold this position for a count then return back to the start.5.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Clap Push-Up',
        'Chest',
        'Strength',
        'Body Only',
        'Steps :1.) Start by getting into a push-up position, keeping your legs extended and toes on the floor behind you.2.) Perform a forceful push-up so that you have enough momentum and strength to bring your hands up off of the floor.3.) While you are elevated off of the floor, clap your hands together and land back on your hands shoulder width apart.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Climber Pull-Up',
        'Back,Biceps',
        'Strength',
        'Pullup Bar',
        'The climber chin-up exercise is a variation of the basic chin up and is a great workout for people who rock climb.Steps :1.) Grasp a chin up bar with a slightly wider than shoulder width overhand grip.2.) Keeping your body straight pull yourself up and to one side of the bar.3.) Lower your body back down to the starting position.4.) Raise yourself to the other side of the bar.Tips : 1.) Alternate sides while performing this exercise. 2.) Allow your body to hang down completely.'
    ),
    (
        'Cobra',
        'Back,Glutes,Shoulders',
        'Strength',
        'Body Only',
        'Steps :1.) Start by laying face down on the floor (prone position) with your arms by your sides.2.) Squeeze your glutes lifting your chest off of the floor with your arms behind you and thumbs pointed towards the ceiling.3.) While in the elevated position, pause and hold for a few moments then return back to the starting position.4.) Repeat for as many reps and sets desired.'
    ),
    (
        'Crescent Moon Pose',
        'Core,Back,Glutes',
        'Stretching',
        'Body Only',
        '1.) Start off by kneeling forward on one knee and stepping forward with the opposite leg, touching the floor with your fingertips and bringing your hips up.2.) As you ease into this position, let the muscles relax and bring your hands to your front knee.3.) Gaining your balance, reach your arms out forward, crossing your fingers and then lift your upper body and hands up towards the sky.4.) While your upper body is shifting upward, move your hips closer towards the floor. Take your spine and shoulders and arch them back dropping your head and stretching your chin up.5.) Hold this position for 5 to 10 seconds and then release back to the starting position.'
    ),
    (
        'Cross Body Crunch',
        'Core',
        'Strength',
        'Body Only',
        'The cross-body crunch exercise is a variation of the crunch that works both the upper and lower portion of the abs.1.) Start by lying on your back, bringing your knees up in a 60-degree angle, keeping your feet flat on the floor and placing your hands on either side of your head.2.) Slowly curl up raising your right elbow and your left knee so that they touch over your chest.3.) Curl up raising your right elbow and your left knee so that they touch over your chest.Tips: 1.) Contract your abs as you twist during this exercise.'
    ),
    (
        'Cross Leg Erector Spinae',
        'Core,Back,Upper Legs',
        'Stretching',
        'Body Only',
        'Steps :1.) Begin this stretch by lying flat on your back with one of your legs straight out, the other bent and crossed over the extended leg.2.) Take your arm on the extended leg side and push against the crossed leg as much as possible holding this position for about 15 to 30 seconds.3.) Repeat this position on the opposite side.'
    ),
    (
        'Cross-Leg Side Stretch (Supine)',
        'Core,Back,Glutes',
        'Stretching',
        'Body Only',
        'Steps :1.) Start off by lying on your back with your arms extended out in the form of a "T".2.) Take both of your legs and bring them up into your chest, keeping them at a 90-degree angle and then crossing your right leg slowly over the left.3.) While keeping your shoulder blades in contact with the floor and arms extended out, rotate the lower half of your body to the left.4.) Hold onto this position for 15 to 30 seconds, repeating for 2-4 reps and then performing this stretch on your opposite side.'
    ),
    (
        'Cross-Legged Forward Fold',
        'Core,Back,Glutes',
        'Stretching',
        'Body Only',
        '1.) Start off by positioning yourself in a cross-legged pose moving your feet forward so that the shins are in a horizontal line.2.) Take your fingertips and place them right in front of your legs.3.) Inhale with a few deep breaths and extend your hands forward as your chest and forehead come down towards the ground.4.) Hold this position for up to 10 seconds and then return back to the starting position.5.) You may repeat this pose but with your legs crossed the other way.'
    ),
    (
        'Crow Pose',
        'Core,Chest,Shoulders',
        'Stretching',
        'Body Only',
        '1.) Begin the position in a squat with your feet close together.2.) Take your hands and place them on the floor shoulder width apart with your fingers facing forward.3.) Bend your knees, bring them right next to your upper arms and then keep your feet close together moving onto your tiptoes.4.) Once set in this position, lean your body forward allowing the transfer of your weight to move from your toes to your palms. See if you can position your triceps on your thighs.5.) Lift up with your ab muscles and arch your hips towards the ceiling moving your feet closer together near your buttocks.6.) Keep your ab muscles and legs in, attempt to straighten out your arms and hold this position for up to 5 breaths.7.) Slowly come down to the starting position and repeat.'
    ),
    (
        'Crunch',
        'Core',
        'Strength',
        'Body Only',
        'The crunch exercise is the most common abdominal exercise and often is improperly performed.1.) Start by placing your hands across your chest or on either side of your head as this will be your starting position.2.) Then slowly raise your upper body (head, shoulders and chest) up off of the floor and towards your knees, squeezing and crunching your abs.3) Hold this position for a count, squeezing your abs, then return back to the starting position.Tips :1.) Make sure to keep your hips straight and your lower back against the floor during this exercise.'
    ),
    (
        'Crunch with Hands Overhead',
        'Core',
        'Strength',
        'Body Only',
        '1.) Begin the exercise by lying with your back flat on the floor and knees bent.2.) With your feet flat on the floor, take your arms and stretch them overhead with your palms overlapping each other.3.) From the floor position, curl your body up from the abdominals and take your shoulder blades off of the floor, keeping your arms straight with your head. 4.) During the upward motion keep your arms straight and don’t move them forward in front of your head. 5.) As you continue your upward motion, exhale and hold in the contraction.6.) Lower yourself back down to the starting position, exhaling on the way down.7.) Repeat this exercise for the amount of repetitions needed.'
    ),
    (
        'Deadlift to Bicep Curl',
        'Back,Glutes,Biceps',
        'Strength',
        'Barbell',
        'This is an intermediate exercise. This exercise combines a bicep curl with a deadlift.1.) Grasp a barbell or EZ Curl bar with a close underhand (palms facing up) grip.2.) Standing with your feet shoulder width apart and your knees slightly bent, draw your abs in.3.) Extend your arms so the bar rests in front of your thighs.4.) Bending at the waist, bring the bar down to just above the floor.5.) As you return to a standing position, bring the bar up and curl your arms bringing your forearms to your shoulders.6.) Return the starting position and repeat.Tips : 1.) Perform this exercise in front of a mirror may help you spot and correct your form.'
    ),
    (
        'Decline Bench Ab Reach',
        'Core',
        'Strength',
        'Bench',
        '1.) Start by sitting on a decline bench with your head at the lowest end, then place both of your hands together and point straight up towards the ceiling.2.) Slowly, while keeping your hands together, reach straight up towards the ceiling as much as possible, lifting your back and shoulder blades up off the bench.3.) Lower your body until you feel a stretch in your abs then return back to the starting position.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Decline Bench Alternating Knee Raise',
        'Core',
        'Strength',
        'Bench',
        'Steps :1.) Start by laying with your back flat on a decline bench, head rested upon the highest end and holding onto the pads above your head to stabilize your body.2.) Keeping your feet and knees together, point your legs straight out in front of you in a plank position, then slowly pull one knee up towards your chest as high as possible until you feel a stretch in your abs.3.) Then return your knee back to the starting position and repeat with the opposite knee.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Decline Bench Alternating Leg Raise',
        'Core',
        'Strength',
        'Bench',
        'Steps :1.) Start off laying with your back flat on a decline bench, head rested upon the highest end and holding onto the pads above your head to stabilize your body.2.) Keeping your feet and knees together, point your legs straight out in front of you in a plank position, then slowly pull one leg up towards the ceiling as high as possible until you feel a stretch in your abs.3.) Then return your leg back to the starting position and repeat with the opposite leg.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Decline Bench Cable Crunch',
        'Core',
        'Strength',
        'Machine - Strength',
        'Steps :1.) Start by placing a decline bench with the lower end facing the base of a low pulley cable machine with a rope extension attached to the machine.2.) Lay down with your back flat on the bench with your head on the lower end and hold the rope by the side of your head.3.) Use your ab muscles and pull your body up off of the bench and crunch up as far as you can until you feel a stretch in your lower abs.4.) Slowly return back to the starting position and repeat for as many reps and sets as desired.'
    ),
    (
        'Decline Bench Cable Knee Raise',
        'Core',
        'Strength',
        'Bench',
        'Steps :1.) Start by placing a decline bench in front of a low pulley cable machine, positioning the lowest end closest to the cable.2.) Connect an ankle strap to the low pulley cable and wrap it around your ankles.3.) Lay down with your back flat on the bench with your head up towards the highest end and grab onto the pads with your hands for support.4.) Slowly pull up with your knees so that they go as high as possible and you feel a stretch in your abs, hold for a count then return back to the starting position.5.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Decline Bench Knee Raise',
        'Core',
        'Strength',
        'Bench',
        'Steps :1.) Start by laying with your back flat on a decline bench, head rested upon the highest end and holding onto the pads above your head to stabilize your body.2.) Keeping your feet and knees together, point your legs straight out in front of you in a plank position, then slowly pull both knees up towards your chest as high as possible until you feel a stretch in your abs.3.) Then return your knees back to the starting position.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Decline Bench Leg Raise',
        'Core',
        'Strength',
        'Bench',
        'Steps :1.) Start by laying with your back flat on a decline bench, head rested upon the highest end and holding onto the pads above your head to stabilize your body.2.) Keeping your feet and knees together, point your legs straight out in front of you in a plank position, then slowly pull both legs up towards the ceiling as high as possible until you feel a stretch in your abs.3.) Then return your legs back to the starting position.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Decline Bench Leg Raise with Hip Thrust',
        'Core',
        'Strength',
        'Bench',
        'Steps :1.) Start by laying with your back flat on a decline bench, head rested upon the highest end and holding onto the pads above your head to stabilize your body.2.) Keeping your feet and knees together, point your legs straight out in front of you in a plank position, then slowly pull both legs up towards the ceiling as high as possible and lift your hips up off of the bench until you feel a stretch in your abs.3.) Then return your legs back to the starting position.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Decline Bench Rotational Sit-Up',
        'Core',
        'Strength',
        'Bench',
        'Steps :1.) Start off laying with your back flat on a decline bench with your hands above your chest and placing your feet underneath the resting pads.2.) Slowly pull your body up and bring your right arm forward and across to your left knee until you feel a stretch in your abs.3.) Hold this position for a count then return to the starting position.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Decline Bench Weighted Twist',
        'Core,Back,Shoulders',
        'Strength',
        'Weight Plate',
        'Steps :1.) Start by laying with your back flat on a decline bench holding a weight plate or dumbbell to your chest and placing your feet underneath the padded foot rests.2.) While keeping your back straight, slowly lean up so that your back creates a 90-degree angle with the bench and push the weight out directly in front of you.3.) Begin by twisting at your mid section bringing the weight over to one side until you feel a stretch in your abs, then return back to the starting position and repeat in the opposite direction.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Decline Crunch',
        'Core',
        'Strength',
        'Machine - Strength',
        'The decline crunch exercise allows you to keep your legs steady and isolate all of the ab muscles.1.) Start by lying with your back flat on a decline bench and placing your feet securely under the foot rest pads as this will be your starting position.2.) Then place your hands either across your chest or on either side of your head then lie back fully and slowly rise with your upper body, crunch your abdominals.3.) Continue forward until you feel a tightening in your ab muscles and hold for a count.4.) Return to the starting position and repeat for as many repetitions and sets as desired.Tips : 1.) Use the full range of movement in this exercise for the optimal results.'
    ),
    (
        'Decline Oblique Crunch',
        'Core',
        'Strength',
        'Bench',
        'The decline oblique crunch is a version of the decline crunch exercise that isolates the oblique muscles of the abdominals.1.) Start by lying on a decline bench face up, placing your feet securely under the pads, and positioning your hands either across your chest or on either side of your head.2.) Raise your shoulders and chest up, keeping your back straight and bringing your left elbow to your right knee, while slowly crunching your abs.3.) Pause for a moment and then return to the starting position.4.) Lay back fully and repeat with your right elbow to your left knee.5.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Decline Reverse Crunch',
        'Core',
        'Strength',
        'Bench',
        '1.) Lie on a incline bench adjusted so your head is higher than your feet.  2.) Use your hands to hold on to the bench.  3.) Extend your legs up into air bending them slightly at the knees.  4.) Lower your legs back down at a slow controlled pace.  5.) Repeat for the desired amount of reps.'
    ),
    (
        'Depth Jump Leap',
        'Upper Legs,Lower Legs',
        'Strength',
        'Body Only',
        'Steps :1.) For this exercise you will need either two boxes with one about a foot high and the other about 2 feet tall, placing one as your starting position and the other about 3 feet apart from the first.2.) Stand on one of the boxes with your arms at your sides and feet on the edge of the box.3.) Drop off of the first box and land with both feet, then upon landing, drive your body upward and outward with as much force as possible and jump onto the other box.4.) With these jumps let your legs absorb the impact.5.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Dip',
        'Triceps,Chest,Shoulders',
        'Strength',
        'Machine - Strength',
        'The chest dip exercise is a variation of the tricep dip exercise that is mainly focused upon your chest rather than the tricep muscle.1.) Start by gripping the bars of a dip bar (if you do not know what this machine is ask for assistance) and push yourself up into the starting position.2.) In the starting position of this exercise your arms should be kept straight and close to your body and knees bent so that it never touches the ground.3.) Performing this exercise, slowly lower your body towards the ground, leading with your chest on the descent.4.) As you lower your body, your chest should be pointing down towards the ground at a 45 degree angle.5.) Continue to lower your body until you feel a stretch in your chest and shoulders, hold for a count then return back to the starting position.Tips :1.) If you cannot manage this exercise yet, it is important to get or use a spotter to hold onto your feet and assist you in the motion.2.) Prevent from locking your elbows in the starting position and keep your abs tight throughout the exercise.'
    ),
    (
        'Donkey Calf Raise',
        'Lower Legs',
        'Strength',
        'Bench',
        'This is and old school gym exercise which requires the assistance of another person. This is an advanced exercise and not recommended for beginners.The donkey calf raise exercise is an old school gym exercise that requires (at times) the assistance of another person and is an advanced exercise that targets the calf muscle.1.) Start by bending at your waist and lean your arms against a weight rack or bench that is waist height.2.) Have a partner sit on top of your lower back or place a weight plate on your back for resistance.3.) Raise up on your toes leaning slightly forward until you feel a stretch in your calve muscles.4.) Pause at the top and then lower your heels to the floor.5.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Double Leg Hundreds',
        'Core,Glutes,Shoulders',
        'Strength',
        'Body Only',
        '1.) Begin by laying on your back with both legs extended up towards the ceiling, directly over your hips, keeping your arms rested at your side.2.) Flex your body forward letting your head and shoulders curl up off of the floor and bringing your chest to your pelvis.3.) Then raise your arms up off of the floor and keep them at level with your shoulders, moving them up and down rapidly but in a controlled motion.4.) Return back to the starting position and repeat for as many reps and sets desired.'
    ),
    (
        'Double Leg Stretch',
        'Core,Glutes,Upper Legs',
        'Stretching',
        'Body Only',
        'Steps :1.) Start off by lying on your back with your knees bent at 45-degrees and your feet flat on the floor hip width apart.2.) Place your arms at your sides with your palms down and extend your spine through inhaling and exhaling.3.) Keep your thighs connected, raise both of your knees so that they are at a 90-degree angle and aligned over your glutes and feet parallel to the floor.4.) From there flex your upper body forward letting your head and shoulders come off of the floor and bring them towards your bent knees, feeling a stretch in your abdominals and pelvis.5.) Hold this position for a few seconds then extending both of your arms and legs away from your body.6.) Keep your feet together and straight out while hands open wide above your head.7.) Take a deep breath in and return back to the center position with your knees bent and head pulling towards your pelvis.8.) Repeat for a slow and steady motion until fully stretched.'
    ),
    (
        'Double-Leg Butt Kick',
        'Upper Legs,Lower Legs',
        'Strength',
        'Body Only',
        'Steps :1.) Start by standing with your arms to your sides and your knees slightly bent.2.) While squatting, quickly extend through your hips and knees to jump as high as you can.3.) Once you go up, tuck your heels back by flexing at your knees and try to touch your glutes with your feet.4.) Land back down on the ground with your knees still bent and letting your legs absorb the impact.5.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Downward Facing Dog',
        'Core,Glutes,Shoulders',
        'Stretching',
        'Body Only',
        '1.) Begin this position on all fours with your hands directly underneath your shoulders.2.) Push up with your hips towards the ceiling whilst extending your legs back.3.) Keep a straight line from your arms to through your spine and your tailbone down through your legs.4.) Hold this position for around 5 to 10 breaths, return to the starting position and repeat.'
    ),
    (
        'Downward Facing Dog Single-Leg',
        'Core,Shoulders,Upper Legs',
        'Stretching',
        'Body Only',
        '1.) Start off on all fours with your hands placed shoulder width apart and fingers spread.2.) Lift your hips up in the air, keeping your feet flat on the floor and arms straight.3.) Press your chest towards the floor and then raise one of your legs high up in the air, still keeping the other foot on the floor and shoulders at level.4.) Hold onto this position for 5 to 10 breaths and return the leg to starting position.5.) Repeat this pose with your opposite leg.'
    ),
    (
        'Downward Facing Puppy Dog',
        'Core,Back,Shoulders',
        'Stretching',
        'Body Only',
        '1.) Start off by kneeling on the floor, placing your hands forward and lowering your head towards the floor.2.) Keep your knees underneath your hips so that your buttocks is raise high in the air.3.) Extend back through the waist and hold this position for 5 to 10 breaths.4.) Return back to the starting position and repeat.'
    ),
    (
        'Dragon Flag',
        'Core,Shoulders,Upper Legs',
        'Strength',
        'Bench',
        'Steps :1.) Start by laying on a decline or flat bench and grabbing the end of it behind your head with both hands.2.) Squeeze and create tension throughout your body so that you are able to feel your muscles and abdominals tighten3.) Then from the starting position swing your feet upward so that your body is almost vertical or completely vertical.4.) Keep your abdominals tight and your entire body as straight as possible as you are pointed up in the air.5.) Hold this position for as long as possible, squeezing your muscles and abs as much as you can.6.) Once you complete your rep, slowly lower your feet towards the floor in a controlled manner.7.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Drop Push-Up',
        'Chest',
        'Strength',
        'Bench',
        'Steps :1.) Start off placing either two platforms or boxes about 2 feet apart from each other then get into a push-up position with your feet extended behind you and placing your hands on the boxes.2.) Drop from the platforms by pushing up off of the boxes with your hands, with as much force as possible, and landing on the ground, hands absorbing the impact.3.) Push yourself back up and extend your arms back onto the boxes.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Dumbbell Alternating Arnold Press',
        'Shoulders,Triceps',
        'Strength',
        'Dumbbell',
        'Steps :1.) Start by standing up straight with feet shoulder width apart and holding a dumbbell in each hand.2.) Slowly, while using your thighs, raise the dumbbells to shoulder level and twist your palms so that they are facing in towards your body.3.) From there raise one dumbbell above your head, while keeping the other one still, squeezing in your shoulder, and hold for a count.4.) Return back to the starting position and repeat with the opposite hand.5.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Dumbbell Alternating Arnold Press (Stability Ball)',
        'Shoulders,Core',
        'Strength',
        'Exercise Ball',
        '1.) Start by sitting on an exercise ball with a dumbbell in each hand.2.) Elevate the dumbbells up towards your shoulders with your palms facing towards you in an Arnold Press position.3.) Slowly press the dumbbells up towards the ceiling, rotating your wrists outward, until your arms are fully extended.4.) Then return back to the starting position, rotating your wrists back inward, and repeat for as many reps and sets as desired.'
    ),
    (
        'Dumbbell Alternating Bent-Over Reverse Fly',
        'Shoulders',
        'Strength',
        'Dumbbell',
        'Steps :1.) Start by standing up straight with your feet shoulder width apart, holding a dumbbell in each hand at your side.2.) Bend down so that your body is parallel with the floor and bring the weights in front of you to about knee level.3.) Slowly extend one of your arms up and out so that the weights are at level with your head and squeeze your shoulder.4.) Hold for a count then return back to the starting position and repeat with the opposite arm.5.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Dumbbell Alternating Bicep Curl',
        'Biceps',
        'Strength',
        'Dumbbell',
        '1.) Start by standing with your feet shoulders width apart.  2.) Pick up the barbells using a palm inward grip.  3.) Curl each barbell alternating each time.  4.) Repeat for the desired amount of reps.'
    ),
    (
        'Dumbbell Alternating Bicep Curl (Stability Ball)',
        'Biceps,Upper Legs,Core',
        'Strength',
        'Dumbbell',
        'Steps :1.) Begin by standing up straight with a dumbbell in each hand and a stability ball placed behind you.2.) Lift up one of your legs and place it behind you onto the stability ball making sure that your shin is placed on the top of the ball.3.) Slowly lift one of the dumbbells up to chest level, isolating the bicep, hold for a 2 count and then lower back down to the starting position under control.4.) Repeat with the other other for as many reps and sets as desired.'
    ),
    (
        'Dumbbell Alternating Bicep Curl (Stability Ball)',
        'Biceps,Core',
        'Strength',
        'Dumbbell',
        '1.)Begin by sitting on a stability ball, holding a dumbbell in each hand while keeping both feet flat on the floor.2.) Slowly lift one dumbbell towards your shoulder, making sure to isolate the bicep and squeeze your muscle.3.) Stop at chest level and then return back to the starting position, repeating with the opposite arm, and then alternating between the two.'
    ),
    (
        'Dumbbell Alternating Cobra (Stability Ball)',
        'Core,Back,Shoulders',
        'Strength',
        'Dumbbell',
        'Steps :1.) Start off by lying in a prone position with an exercise ball underneath your sternum, keeping your legs straight behind you and your arms at your sides.2.) Squeeze with your glutes, keep your feet straight and lift your torso off of the ball in an elevated position.3.) Extend your right arm backwards while keeping the left arm in place, return the right arm to the starting position while the left arm extends backwards.4.) Alternate arms for as many reps and sets as desired.'
    ),
    (
        'Dumbbell Alternating Deltoid Raise',
        'Shoulders',
        'Strength',
        'Dumbbell',
        'Steps :1.) Start by standing up straight with your feet shoulder width apart, arms at your sides and holding a dumbbell in each hand.2.) Once in position slowly raise the weights up at your sides till they are at shoulder height avoiding any swinging. 3.) Hold this position for a count then return back to the starting position.4.) On the next rep raise the weights out directly in front of you until they are at shoulder level again.5.) Return back to the starting position and repeat for as many reps and sets as desired.'
    ),
    (
        'Dumbbell Alternating Front Raise',
        'Shoulders',
        'Strength',
        'Dumbbell',
        'Steps :1.) Start by standing up straight with a dumbbell in each hand with your palms facing inward towards your body.2.) Slowly elevate one of the dumbbells up in front of you towards shoulder level and hold for a count.3.) Return the dumbbell back to the starting position and repeat with the opposite arm.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Dumbbell Alternating Hammer Curl',
        'Biceps',
        'Strength',
        'Dumbbell',
        'The alternate hammer curl exercise uses a hammering (up and down) motion to isolate the biceps and to build bigger arms.Steps :1.) Start off standing with your feet shoulder-width apart, keeping your knees slightly bent and your abs drawn in tightly.2.) Grab a dumbbell in each hand with your palms facing inward and extend your arms out at the sides of your body.3.) While keeping your elbows locked in at your sides, slowly lift your left arm in an arc motion towards your left shoulder, isolating the bicep and squeeze the muscle.4.) Hold for a count and return back to the starting position.5.) Repeat the same steps with your right arm for as many reps and sets as desired.Tips :1.) Refrain from turning your wrists during this exercise.'
    ),
    (
        'Dumbbell Alternating Hammer Curl (Stability Ball)',
        'Biceps,Core,Shoulders',
        'Strength',
        'Dumbbell',
        'Steps :1.) Start off by sitting on an exercise ball with dumbbell in each hand rested at your sides.3.) With one of your arms raise the weight up towards your shoulder, keeping the elbow close to your body and squeezing the bicep.4.) Return back to the starting position and repeat with the other arm.5.) Repeat for as many reps and sets desired.'
    ),
    (
        'Dumbbell Alternating Incline Curl',
        'Biceps',
        'Strength',
        'Dumbbell',
        'The alternate incline dumbbell curl exercise uses an incline bench to change your body s position as you perform this workout.Steps :1.) Start off by taking either a pre-set incline bench or an adjustable bench and setting it to a 45 degree angle.2.) Grab a dumbbell in each hand, sit back on the bench with your feet planted firmly on the floor in front of you and hand your arms down at your sides.3.) Keeping your elbows straight, raise your right arm up towards your head, isolating the bicep and squeezing the muscle.4.) Hold the position for a count then lower down to the starting position.5.) Repeat the same steps with your left arm.'
    ),
    (
        'Dumbbell Alternating Kickback',
        'Triceps',
        'Strength',
        'Dumbbell',
        'Steps :1.) Begin by sitting up straight on a flat bench with your feet shoulder width apart, holding a dumbbell in each hand.2.) Move your back down towards the floor so that your chest is resting on your thighs, bring the dumbbells to your sides and tuck your upper arms towards your body.3.) Slowly raise one dumbbell up behind you until your arm is fully extended and squeeze your tricep.4.) Hold for a count then return back to the starting position.5.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Dumbbell Alternating Kickback',
        'Triceps',
        'Strength',
        'Dumbbell',
        'Steps :1.) Start by standing up straight with your feet shoulder width apart, holding a dumbbell in each hand.2.) Bend your back down towards the floor so that it is parallel to the ground, bring the dumbbells to your sides and tuck your upper arms towards your body.3.) Slowly raise one dumbbell up behind you until your arm is fully extended and squeeze your tricep.4.) Hold for a count then return back to the starting position.5.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Dumbbell Alternating Lateral Raise',
        'Shoulders',
        'Strength',
        'Bench',
        'Steps :1.) Start by sitting down at the end of a flat bench with your feet shoulder width apart and holding a dumbbell in each hand.2.) While keeping your body still, slowly raise one of the dumbbells out to the side up to shoulder level, squeezing on the way up and hold for a count.3.) Then return back to the starting position and repeat with the opposite arm.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Dumbbell Alternating Lateral Raise',
        'Shoulders',
        'Strength',
        'Dumbbell',
        'Steps :1.) Start by standing up straight with your feet shoulder width apart and holding a dumbbell in each hand.2.) While keeping your body still, slowly raise one of the dumbbells out to the side up to shoulder level, squeezing on the way up and hold for a count.3.) Then return back to the starting position and repeat with the opposite arm.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Dumbbell Alternating Lateral Raise (Stability Ball)',
        'Shoulders,Core',
        'Strength',
        'Dumbbell',
        '1.) Start off by sitting straight up on an exercise ball with both feet together and each hand holding a dumbbell.2.) Elevate one of the dumbbells to shoulder height, keeping the dumbbell straight during the entire motion then slowly return back to the starting position.3.) Then alternate with the opposite arm with the dumbbell to shoulder level.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Dumbbell Alternating Posterior Fly (Stability Ball)',
        'Shoulders,Back,Core',
        'Strength',
        'Dumbbell',
        '1.) Start off sitting on an exercise ball with both feet together, your chest close to your knees and arms hanging down in front with a dumbbell in each hand.2.) While maintaining a flat back, lift one of the weights to shoulder height allowing the arm to bend slightly and hold for a count, as the other arm stays in front of you.3.) Return back to the starting position and alternate the exercise with the opposite arm. 4.) Repeat for as many reps and sets desired.'
    ),
    (
        'Dumbbell Alternating Preacher Curl',
        'Biceps',
        'Strength',
        'Machine - Strength',
        '1.) Start by sitting on a preacher curl bench with a dumbbell in each hand, resting your forearms upon the bench and feet flat on the floor.2.) Hold the dumbbells with your palms facing towards you and let the weights fully extend out in front of you.3.) Slowly elevate one of the dumbbells up towards your chest, squeezing and isolating your bicep, then hold for a count.4.) Return back to the starting position and repeat with the opposite arm.5.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Dumbbell Alternating Preacher Curl (Hammer)',
        'Biceps,Forearms',
        'Strength',
        'Machine - Strength',
        'Steps :1.) Start by sitting on a preacher curl bench with a dumbbell in each hand, resting your forearms upon the bench and feet flat on the floor.2.) Hold the dumbbells in a hammer or neutral grip and let the weights fully extend out in front of you.3.) Slowly elevate one of the dumbbells up towards your chest, squeezing and isolating your bicep, then hold for a count.4.) Return back to the starting position and repeat with the opposite arm.5.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Dumbbell Alternating Press',
        'Shoulders,Triceps',
        'Strength',
        'Dumbbell',
        'Steps :1.) Start by standing up straight, holding a dumbbell in both arms at shoulder level next to your head.2.) Slowly extend one of your arms overhead, squeezing in your shoulder and hold for a count.3.) Return back to the starting position and repeat with the opposite arm.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Dumbbell Alternating Press (Palms In)',
        'Shoulders,Triceps',
        'Strength',
        'Dumbbell',
        'Steps :1.) Start by sitting at the end of a flat bench with your feet on the floor in front of you, holding a dumbbell in each arm at shoulder level, and palms facing in next to your head.2.) Slowly extend one of your arms overhead, squeezing your shoulder and hold for a count.3.) Return back to the starting position and repeat with the opposite arm.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Dumbbell Alternating Reverse Curl',
        'Forearms,Biceps',
        'Strength',
        'Dumbbell',
        'Steps :1.) Start by standing up straight, feet shoulder width apart and arms rested at your sides holding a dumbbell in each hand with a palms down reverse grip.2.) Slowly with one arm elevate the dumbbell up to your shoulder, squeezing your forearm, and hold for a count.3.) Return back to the starting position and repeat with the opposite arm.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Dumbbell Alternating Reverse Fly',
        'Shoulders',
        'Strength',
        'Dumbbell',
        '1.) Start by setting up an incline bench with your chest rested upon the bench with feet extended behind you, toes on the floor, holding a dumbbell in each hand, and arms rested down towards the floor.2.) Slowly, using your shoulders, raise one of your arms up towards the ceiling, squeezing on the way up and hold for a count.3.) Return back to the starting position and repeat with the opposite arm.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Dumbbell Alternating Reverse Fly (Prone)',
        'Shoulders',
        'Strength',
        'Dumbbell',
        'Steps :1.) Start by setting up a flat bench with your chest rested upon the bench, feet extended behind you, holding a dumbbell in each hand, and arms rested down towards the floor.2.) Slowly, using your shoulders, raise one of your arms up towards the ceiling, squeezing on the way up and hold for a count.3.) Return back to the starting position and repeat with the opposite arm.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Dumbbell Alternating Row (Stability Ball)',
        'Back,Glutes,Shoulders',
        'Strength',
        'Dumbbell',
        'Steps :1.) Start by laying prone with your hips on an exercise ball with each hand gripping a dumbbell and arms at the sides of the ball.2.) Once in position, pull one of the weights upwards, keeping the other still positioned at your side, and retract your shoulder to reach its peak until you feel a stretch.3.) Slowly return back to the starting position, alternate with the opposite arm and repeat for as many reps and sets desired.'
    ),
    (
        'Dumbbell Alternating Seated Curl',
        'Biceps',
        'Strength',
        'Dumbbell',
        '1.) Start by setting up a flat bench and then sit down on the bench, with a dumbbell in each hand and feet flat on the floor.2.) Hold the dumbbells in an underhand grip with your palms facing up, then slowly lift one dumbbell up towards your shoulder, isolating the bicep and hold for a count.3.) Return back to the starting position and repeat with the opposite arm.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Dumbbell Alternating Shoulder Press',
        'Shoulders,Triceps',
        'Strength',
        'Dumbbell',
        'Steps :1.) Start by standing up straight with your feet shoulder width apart, holding a dumbbell in both hands at head level in a neutral grip so that your palms are facing in.2.) Slowly elevate one of the dumbbells up and above your head while squeezing your shoulder.3.) Hold for a count then return back to the starting position then repeat with the opposite arm.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Dumbbell Alternating Shoulder Press (Stability Ball)',
        'Shoulders',
        'Strength',
        'Dumbbell',
        'Steps :1.) Start off by sitting on top of an exercise ball with your feet planted firmly on the floor in front of you, arms bent by your head at 90-degrees and dumbbells in each hand.2.) Raise one of the dumbbells slightly and elevate them over your head completely keeping the other next to your head in position.3.) Keep your arm straight at the top and hold motion for a count then return back to the starting position.4.) When you return back down with the first weight, elevate up with the opposite arm and perform the same motion.5.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Dumbbell Alternating Tricep Extension',
        'Triceps',
        'Strength',
        'Dumbbell',
        'Steps :1.) Start by laying down on flat bench with your feet on the floor in front of you, holding a dumbbell in each hand in a neutral grip elevated above your head.2.) Slowly extend one arm upward. Maintain the same elbow position during the movement.3.) Return back to the starting position and repeat with the opposite arm.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Dumbbell Alternating Tricep Kickback',
        'Triceps',
        'Strength',
        'Dumbbell',
        'Steps :1.) Start by standing with your feet shoulder width apart, knees bent at around 25-degrees, your hands holding dumbbells with your elbows bent at 90-degrees.2.) Bend your body forward so that the dumbbells are parallel with your legs and then slowly lift one of the dumbbells behind you so that you feel a stretch in your triceps.3.) Hold this position for a count and then return back to the start, alternating with the opposite arm and repeating.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Dumbbell Arnold Press',
        'Shoulders',
        'Strength',
        'Dumbbell',
        'Steps :1.) Begin by standing up straight with feet shoulder width apart and holding a dumbbell in each hand.2.) Slowly, while using your thighs, raise the dumbbells to shoulder height and rotate your palms so that they are facing in towards your body.3.) From there raise both dumbbells above your head, squeezing in your shoulder, and hold for a count.4.) Return back to the starting position.5.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Dumbbell Arnold Press (Stability Ball)',
        'Shoulders',
        'Strength',
        'Dumbbell',
        'Steps :1.) Start by sitting on an exercise ball straight up, gripping a dumbbell in each hand and keeping them elevated in front of your chest, palms facing in.2.) Slowly press the weights upward by twisting the weights so that your palms are facing out and raised above your head until the elbow is next to your ear and hold for a count.3.) Return back to the starting position and repeat for as many reps and sets as desired.'
    ),
    (
        'Dumbbell Around the World',
        'Chest,Triceps,Shoulders',
        'Strength',
        'Dumbbell Bench',
        '1.) To begin this exercise; start off laying flat down on a bench holding a dumbbell in each hand next to your thighs with palms facing up.2.) Take the dumbbells and create a semi-circle by rotating them up over your head with the motion staying parallel.3.) Return back to the starting position.4.) Repeat this exercise for as many repetitions as needed.'
    ),
    (
        'Dumbbell Bench Press',
        'Chest,Shoulders,Triceps',
        'Strength',
        'Dumbbell',
        'The dumbbell bench press exercise is an alternative to the standard barbell bench press exercise, mostly for using dumbbells in place of a barbell.Steps :1.) Start by picking a pair of dumbbells that you can manage, holding them at your sides and then sitting on the edge of a flat bench.2.) Using your thighs and thrusting of your arms to lift the weights onto your legs in your starting position.3.) Lean back onto the bench and on the motion down, push the dumbbells up about an inch high above your chest as this will be your starting position.4.) The dumbbells should be aligned with the middle of your chest and then slowly push the dumbbells up above your body using mostly your chest and triceps for the motion upward.5.) Stop the motion of the exercise as soon as your arms are straight and the dumbbells are directly above your chest.6.) Squeeze your chest muscles as soon as you reach the top position and hold for a count, then return back to the starting position.7.) On the return motion down, do not let gravity do the work or drop the dumbbells, you should be resisting gravity of the way down.Tips : 1.) Make sure when performing this exercise to breathe comfortably and deeply2.) Refrain from clanking the dumbbells together or spinning them around when you get to the top as this is improper form.'
    ),
    (
        'Dumbbell Bench Press (Palms in)',
        'Chest,Shoulders,Triceps',
        'Strength',
        'Dumbbell',
        'Steps :1.) Start by laying with your back flat on a bench with your feet rested on the floor and holding a dumbbell in each hand.2.) Keep the dumbbells rested at your chest as you get yourself into position, holding onto them with a neutral grip.3.) Extend your hands above your chest and squeeze so that you feel a stretch in your pecs, then hold for a count.4.) Then slowly return the dumbbells at the sides of your chest.5.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Dumbbell Bench Press (Reverse Grip)',
        'Chest,Shoulders,Triceps',
        'Strength',
        'Dumbbell',
        'Steps :1.) Start by laying flat on your back on a bench, feet on the floor and hands holding dumbbells in a underhand reverse grip at the sides of your chest.2.) Slowly push the dumbbells straight up above your chest, squeezing your pecs and hold for a count.3.) Return back to the starting position.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Dumbbell Bench Squat',
        'Upper Legs,Back,Glutes',
        'Strength',
        'Dumbbell',
        '1.) To begin this exercise; start off with dumbbells in both arms rested on your side positioned right in front of a bench.2.) Bend at your knees and start to sit back with your hips as you go down for a standard squat keeping your back and chest straight out. 3.) Continue on with the squat until your hamstrings and glutes are rested upon the box and hold on for a few seconds.4.) Then using the force of your heels and lower legs, straighten out and extend your hips to get back to your starting position.5.) Repeat this exercise for as many repetitions as needed'
    ),
    (
        'Dumbbell Bent-Over Raise',
        'Shoulders',
        'Strength',
        'Dumbbell',
        'The dumbbell bent-over raise is a variation of the standard rear deltoid row that allows you to use a bench to stabilize yourself and avoid any injuries.1.) Start by standing in front of an incline bench holding a pair of dumbbells in each hand, bending slightly at your knees and keeping your abs tight.2.) Bend over slowly until your forehead touches the top of the bench, keeping your arms handing at your sides and palms facing each other.3.) Slowly raise your arms out to their sides, squeezing your deltoids on the ascent.4.) Once your arms are parallel with the floor, hold for a count while squeezing your muscles then return back to the starting position.'
    ),
    (
        'Dumbbell Bent-Over Reverse Fly',
        'Shoulders',
        'Strength',
        'Dumbbell',
        'Steps :1.) Start by standing up straight with your feet shoulder-width apart and holding a dumbbell in each hand at your side.2.) Bend down so that your body is parallel with the floor and bring the weights in front of you to about knee level.3.) Slowly extend your arms up and out so that the weights are at level with your head and squeeze your shoulders.4.) Hold for a count then return back to the starting position.5.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Dumbbell Bent-Over Row',
        'Back,Biceps',
        'Strength',
        'Dumbbell',
        'Steps :1.) Start by holding a dumbbell in each hand with palms facing towards you, bending slightly at your knees and at your torso as if you were to pick up something.2.) Hold you arms straight down with a weight in each hand and then slowly lift the dumbbells to your sides.3.) Once at the top position hold for a count while squeezing your back muscles and then return back to the starting position.  4.) Repeat for as many reps and sets as desired.Tips : 1.) Do not arc or bend your back.2.) Perform the exercise slower for more intensity.3.) Do not lift more than you can manage as that can lead to injury.'
    ),
    (
        'Dumbbell Bent-Over Row (Palm in)',
        'Back,Back',
        'Strength',
        'Dumbbell',
        'Steps :1.) Start by standing up straight with your feet shoulder width apart and a dumbbell in each hand holding with a neutral grip.2.) Slowly and slightly lower your back towards the ground so you feel tension in your lower back and then slowly elevate the dumbbells up towards your chest.3.) Squeeze your back in the process, hold for a count then return back to the starting position.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Dumbbell Bent-Over Row (Palms in)',
        'Back,Core,Core',
        'Strength',
        'Dumbbell',
        'Steps :1.) Start by standing up straight with your feet shoulder width apart, arms at your sides with a dumbbell in each hand.2.) Slowly bend your body towards the floor so that you are almost parallel to the ground and knees slightly bent.3.) Bring the dumbbells out towards your sides but at level with your lower chest, extending your elbows back behind you and squeezing with your back.4.) Hold this position for a count then return back to the starting position.5.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Dumbbell Bent-Over Tricep Extension',
        'Triceps,Shoulders',
        'Strength',
        'Dumbbell',
        '1.) To begin this exercise; start off with a dumbbell in each hand, bend your knees and bring your upper body down and forward.2.) Keep the arms at your waist with dumbbells parallel from the floor. 3.) Then take the arm and lift the weight up and behind your back squeezing your triceps tightly.4.) Hold the position for a few seconds then return back to the starting position.5.) Repeat this exercise for as many repetitions as needed.'
    ),
    (
        'Dumbbell Bicep Curl',
        'Biceps',
        'Strength',
        'Dumbbell',
        'The dumbbell bicep curl uses both arms at the same time to build stronger arms.Steps :1.) Start by standing up straight with your feet shoulder-width apart, abs tight, knees slightly bent and a dumbbell in each hand holding in a palms up grip.2.) While holding the dumbbells extend your arms at the side of your body, then slowly lift your arms up towards your chest until your forearms touch your biceps.3.) Isolate the bicep and hold this position for a count.4.) Return back to the starting position and repeat for as many reps and sets as desired.Tips :1.) Refrain from swinging your arms during this exercise.'
    ),
    (
        'Dumbbell Bicep Curl (Reverse Grip)',
        'Forearms,Biceps',
        'Strength',
        'Dumbbell',
        'Steps :1.) Start by standing up straight, feet shoulder width apart and arms rested at your sides holding a dumbbell in each hand with a palms down reverse grip.2.) Slowly elevate the dumbbells up to your shoulders, squeezing your forearm, and hold for a count.3.) Return back to the starting position.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Dumbbell Bicep Curl (Supine Wide Grip)',
        'Biceps',
        'Strength',
        'Dumbbell',
        'Steps :1.) Start by laying with your back flat on a bench and your feet in front of you in contact with the floor and arms elevated at your sides with a dumbbell in each hand.2.) Hold the dumbbells in a neutral grip then extend your arms out to your sides, keeping your upper body, wrists and shoulders in a line.3.) Slowly curl the dumbbells towards your shoulders and twist to form an underhand grip, isolating the biceps, then hold for a count.4.) Return back to the starting position.5.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Dumbbell Bicep Curl (Supine)',
        'Biceps,Forearms',
        'Strength',
        'Dumbbell',
        'The dumbbell lying supine biceps curl machine exercise is an advance exercise where you lie down to isolate and target the bicep muscles1.) Start off lying on a flat bench with your head at one end and your feet planted firmly on the floor at the other end.2.) Grabbing a dumbbell in each hand, palms facing in, bring your arms down to your sides, hanging off the bench.3.) Slowly raise your arms up until they are level with your chest, then curl the dumbbells twisting your palms so your forearms touch your biceps.4.) Hold this position for a count, isolating the bicep muscle and squeezing.5.) Slowly lower your arms to the starting position.6.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Dumbbell Bicep Curl on Dome',
        'Biceps,Core',
        'Strength',
        'Dumbbell',
        'The dumbbell biceps curl uses a dome as a seat forcing you to engage your core muscles through the workout to help target and isolate the biceps.1.) Start by grabbing a dumbbell in each hand and sit on a dome, keeping your legs together and your knees bent.2.) With you arms extended to your sides, curl and contract your biceps, bringing your forearms towards your shoulders, squeezing your bicep muscles.3.) Slowly return to the starting position.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Dumbbell Bicep Curl on Stability Ball',
        'Biceps,Forearms,Upper Legs',
        'Strength',
        'Exercise Ball',
        'The bicep curl on a stability ball with leg raised exercise is an advanced exercise that incorporates balance along with a bicep curl.1.) Start by holding a dumbbell in each hand with a palms up grip.2.) Place the top of one foot behind you on an exercise ball as if you were stretching your leg.3.) While keeping your back straight and your abs drawn in, bring your arms down in front of your legs.4.) Raise your arms up, curling and contracting your biceps, squeezing the muscle as much as possible.5.) Lower your arms and return to starting position and switch legs.6.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Dumbbell Bicep Curl Step-Up',
        'Biceps,Upper Legs,Glutes',
        'Strength',
        'Dumbbell',
        'The step up single leg balance with bicep curl exercise is an advanced workout that combines a step up with a bicep curl to target the arm muscles.1.) Place a box or bench in front of you and grab a dumbbell in each hand with a palms up grip.2.) With one leg, step up on to the box and raise your other leg up (as if taking another step).3.) At the top of the step curl your arms up bringing your biceps towards your shoulders, squeezing the bicep muscles.4.) Return to the starting position and switch legs.5.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Dumbbell Bicep Curl With Stork Stance',
        'Biceps,Glutes,Upper Legs',
        'Strength',
        'Dumbbell',
        'The dumbbell bicep curl with stork stance is an advanced exercise that requires excellent coordination and balance to target and isolate the bicep muscle.1.) Start by holding a pair of dumbbells in each hand, palms facing up.2.) Standing on one foot, extend your other foot back (see illustration) and extend your arms down so they are handing in front of your leg.3.) While on one foot, curl your arms up contracting your biceps, squeezing the muscle as much as possible.4.) Return to the starting position and switch legs.5.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Dumbbell Calf Raise',
        'Lower Legs',
        'Strength',
        'Dumbbell Weight Plate',
        '1.) Grasp dumbbell in one hand to side and position toes and balls of feet on calf block with arches and heels extending off. 2.) Place hand on support for balance. 3.) Raise heels by extending ankles as high as possible. 4.) Lower heels by bending ankles until calves are stretched. 5.) Repeat for the desired amount of reps and sets.'
    ),
    (
        'Dumbbell Cobra (Stability Ball)',
        'Core,Back,Shoulders',
        'Strength',
        'Dumbbell',
        '1.) Start by lying in a prone position with an stability ball under your sternum, keeping your legs straight behind you and your arms at your sides. Take hold of a light pair of dumbbells.2.) Squeeze with your glutes, extend your arms back towards your legs, keep your feet straight and lift your torso off the ball in an elevated position.3.) Hold this position for a few seconds and return back to the start.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Dumbbell Concentration Curl',
        'Biceps',
        'Strength',
        'Dumbbell',
        'The dumbbell concentration curl exercise limits you range of motion and concentrates on isolating the bicep muscle.Steps :1.) Start by sitting on the end of a flat bench with your feet flat and your legs spread in a V position.2.) Grab a dumbbell in one of your hands with a palms up grip, placing this arm in between your legs and up against your inner thigh just above your knee.3.) Slowly curl the weight up towards your chest, squeezing your bicep on the motion upward and once you reach the top, hold the position for a count.4.) Return back to the starting position and repeat for as many reps and sets as desired.5.) Switch arms and repeat the same steps.'
    ),
    (
        'Dumbbell Concentration Curl on Stability Ball',
        'Biceps,Core',
        'Strength',
        'Dumbbell',
        '1.) Start by sitting on an exercise ball with your feet spread apart, grasping a dumbbell in one hand and keeping in between your legs.2.) Slowly lift the weight up towards your chest in a controlled movement, making sure that you isolate the bicep, hold for a 2 count and then lower back down to the starting position.3.) Repeat for as many reps and sets as desired and then repeat with the other arm.'
    ),
    (
        'Dumbbell Cross Tricep Extension (Supine)',
        'Triceps',
        'Strength',
        'Dumbbell',
        'The dumbbell lying triceps extension across face exercise is an advanced exercise that targets the tricep muscles.1.) Start by lying on a flat bench with your head at one end and your feet panted firmly on the floor on the other end.2.) Grab a dumbbell in each hand, with a palms up grip, and raise it over your body.3.) While keeping your upper arms and elbows still, lower the dumbbell slowly over your face bending only your elbow.4.) Slowly raise the dumbbell back to the starting position and repeat with your other arm.5.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Dumbbell Cuban Press',
        'Shoulders',
        'Strength',
        'Dumbbell',
        'The cuban press exercise helps build strong shoulders and helps targets the rotator cuff muscles of your shoulders.Steps :1.) Start by standing up straight with your feet shoulder-width apart gripping a dumbbell in each hand with an overhand grip.2.) While holding the dumbbells in each hand, let your forearms hang down and bring your elbows up, keeping them at a 90 degree angle.3.) While bringing your elbows up, rotate your shoulders so that your forearms go from facing down towards the ground to facing up towards the ceiling.4.) Slowly rotate your shoulders so that your forearms point down at the ground again.5.) Return back to the starting position and repeat for as many reps and sets as desired.Tips : 1.) You don t need to use a heavy weight with the cuban press exercise as that might result in injury.2.) While performing this exercise keep your back straight and abs tight to help balance and brace your body.'
    ),
    (
        'Dumbbell Deadlift',
        'Back,Glutes,Upper Legs',
        'Strength',
        'Dumbbell',
        'The dumbbell deadlift exercise works and strengthens the lower back and leg muscles.1.) Start by grabbing two dumbbells with an overhand grip and stand with your feet shoulder width apart.2.) Keeping your back straight, bend at the waist, allow a slight bend in your knees.3.) Keep your back straight as you hold the dumbbells at arms length.4.) Bend over again lowering the dumbbells to just above the floor.5.) Return to starting position and repeat for as many reps and sets as desired.'
    ),
    (
        'Dumbbell Decline Bench Lunge',
        'Upper Legs,Glutes,Lower Legs',
        'Strength',
        'Dumbbell',
        'Steps :1.) Start by setting up a decline bench in front of you, placing your right foot on the bench keeping your leg extended and holding a dumbbell at your sides.2.) Then slowly, while keeping your balance, lunge forward and squat down so that you feel a stretch in your quads, hold for a count then return back up to the starting position.3.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Dumbbell Decline Bench Press',
        'Chest,Triceps,Shoulders',
        'Strength',
        'Dumbbell',
        'The dumbbell decline bench press targets your lower chest and requires more stability in your muscles more than the standard dumbbell bench press.1.) Start by lying on a decline bench so that your head is lower than your feet and having a grip on a pair of dumbbells with an overhand grip with your palms facing towards your feet.2.) Hold the dumbbells directly above your chest so that their inner edges are touching.2.) Lift the dumbbells up and hold them directly above your chest so that they are touching.3.) Slowly lower the weights until they are inline with the top of your chest, squeezing your muscles and hold for a count.4.) Then, raise them straight up to the starting position.Tips : 1.) It is important during the dumbbell bench press to focus on stabilizing your muscles.2.) Alternate between the dumbbell and barbell versions of this exercise get benefits from both.'
    ),
    (
        'Dumbbell Decline Fly',
        'Chest,Shoulders',
        'Strength',
        'Dumbbell',
        'The dumbbell decline flys target the inner part of your lower chest as well as stretch your chest and biceps.Steps :1.) Start by lying flat on a decline bench with your head positioned lower than your feet.2.) Hold a dumbbell in each hand keeping your elbows slightly bent and arms out at your sides facing straight down towards the ground so that you feel a stretch in your chest.3.) Push the dumbbells up above your chest, squeezing your muscles and hold this position for a count.4.) Return the dumbbells back to their starting position and repeat for as many reps and sets as desired.'
    ),
    (
        'Dumbbell Decline One-Arm Fly',
        'Chest',
        'Strength',
        'Dumbbell',
        '1.) Start off by laying on an decline bench, with your feet flat on the floor or secured in foot rests, one arm holding a dumbbell and arm extended over your chest.2.) Keeping your elbow slightly bent, lower the weight down until it is about chest level and hold.3.) Return back to the starting position and repeat for as many reps and sets as desired.'
    ),
    (
        'Dumbbell Decline One-Arm Hammer Press',
        'Chest',
        'Strength',
        'Dumbbell',
        '1.) Start by laying on a decline bench with your feet flat on the floor or secured under foot holders, one arm holding a dumbbell in a hammer grip position and arm extended above your chest.2.) Slowly lower your arm to shoulder level, maintaining a 90-degree angle in your arm until you feel a tension in your chest.3.) Hold this position for a count then return back to the starting position.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Dumbbell Decline Press',
        'Chest',
        'Strength',
        'Dumbbell',
        'Steps :1.) Start off by laying down on an decline bench with your feet flat on the floor or in foot holder, holding a dumbbell in both hands with arms extended straight over your chest.2.) Then slowly lower your arms until they at about shoulder, keeping a 90-degree angle in your arms until you feel tension in your chest.3.) Hold this position for a count then return back to the starting position.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Dumbbell Decline Press (Stability Ball)',
        'Chest,Core',
        'Strength',
        'Dumbbell',
        'Steps :1.) Start by sitting on an exercise ball close to a bench with a dumbbell in both hands2.) Slowly roll down making sure that your shoulders are lower than your hips and your feet are planted firmly on the floor in front of you.3.) Hook your feet right underneath the bench to give yourself balance and support.4.) Extend the dumbbells above your chest then slowly lower them down in a bent arm motion so that you have a full extension of your chest.5.) Return back to the starting position and repeat for as many reps and sets desired.Tips :1.) This exercise requires balance and either a spotter, somebody to hold your legs or a bench to keep yourself secure from falling back and injuring your head'
    ),
    (
        'Dumbbell Decline Tricep Extension',
        'Triceps',
        'Strength',
        'Dumbbell',
        'The dumbbell decline triceps extension exercise combines a decline bench and dumbbells to target the tricep muscle.1.) Start off by lying face up (back flat) on a decline bench with a dumbbell in each hand.2.) Extend your arms so they are perpendicular to your chest, and keeping your elbows in one place, lower your hands so the dumbbells are lowered near your head.3.) Slowly return to the starting position.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Dumbbell Deep Push-Up',
        'Chest,Shoulders',
        'Strength',
        'Dumbbell',
        'Steps :1.) Start by getting yourself into a pushup position with your hands holding onto dumbbells on the floor in front of you.2.) Keep your arms at shoulder width distance and legs extended behind you with toes on the floor.3.) Slowly lower your body down towards the floor as far as possible, so that you feel a deep stretch in your chest, then hold for a count.4.) Return back to the starting position.5.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Dumbbell Deltoid Raise',
        'Shoulders',
        'Strength',
        'Dumbbell',
        'Steps :1.) To begin this exercise; start off by holding two dumbbells in front of your pelvis with your palms facing your thighs.2.) Take the dumbbells and raise them in a semicircular motion so that they are overhead.3.) Return back to the starting position.4.) Repeat this exercise for as many repetitions as needed.'
    ),
    (
        'Dumbbell Dublin Press',
        'Shoulders,Triceps',
        'Strength',
        'Dumbbell',
        'Steps :1.) Start by standing up straight, holding a dumbbell in each arm at shoulder level next to your head.2.) Slowly extend your arms overhead, squeezing in your shoulder and immediately return back to the starting position.3.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Dumbbell External Rotation',
        'Shoulders',
        'Strength',
        'Dumbbell',
        'Steps :1.) Start by laying on your side on a flat bench with one arm holding a dumbbell against your chest and the other arm extended in front of you holding to the bottom of the bench.2.) Bend your elbow that is holding the dumbbell so that it is in a 90 degree angle then while keeping this position.3.) Slowly rotate your forearm externally so that the dumbbell is lifted up from the chest position and is perpendicular to the floor.4.) Hold onto this position for a count then return back to the starting position.5.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Dumbbell Fly',
        'Chest',
        'Strength',
        'Dumbbell',
        'The dumbbell fly exercise targets your pecs with more focus than the standard dumbbell bench press as well as focusing upon the inner part fo your pecs.1.) Start off lying on a flat bench with your arms out to your sides holding a dumbbell in each hand at shoulder height.2.) Push the dumbbells up from their position using your chest and bring your arms up, without using them for lifting, until the dumbbells are directly above your chest.3.) Once in the top position, your elbows should be facing outwards and palms facing inwards, squeeze your chest muscles and hold for a count.4.) Return back to the starting position and repeat for as many reps and sets as desired.Tips : 1.) It is important to concentrate on using your chest to perform this exercise.'
    ),
    (
        'Dumbbell Fly (Stability Ball)',
        'Chest',
        'Strength',
        'Dumbbell',
        '1.) Start by sitting on an exercise ball with a dumbbell in each hand.2.) Slowly roll down making sure that your head and shoulders are on the ball and your feet are planted firmly on the floor in front of you.3.) Hold the dumbbell straight over your chest then let them lower down, bending the elbows slightly so that they are just above shoulder level.4.) Return back to the starting position and repeat for as many reps and sets desired.'
    ),
    (
        'Dumbbell Forward Lunge with Bicep Curl',
        'Biceps,Upper Legs,Glutes',
        'Strength',
        'Dumbbell',
        'The forward lunge with bicep curl requires balance and coordination and also targets the bicep muscles.1.) Grasp a dumbbell in each hand with your palms facing up and stand up straight with your feet together, your back straight and your abs drawn in.2.) Allow your arms to extend down fully to the sides of your body.3.) While keeping your body straight, take a step forward then bend your waist and your knee into a lunge. 4.) As you go into the lunge curl your arms up towards your shoulders contracting your biceps.5.) Return to starting position and switch legs.6.) Repeat for as many reps and sets as desired.Tips : 1.) Refrain from dropping your leg and knee to the ground.'
    ),
    (
        'Dumbbell French Press (Stability Ball)',
        'Triceps,Core,Shoulders',
        'Strength',
        'Exercise Ball',
        '1.) Start by sitting on an exercise ball with a dumbbell in each hand.2.) Slowly roll down making sure that your head and shoulders are on the ball and your feet are planted firmly on the floor in front of you.3.) Extend the dumbbell behind your head with bent elbows and hold.4.) Then push the weight to the ceiling until your arm is fully extended then return the dumbbell back to the starting position.5.) Repeat for as many reps and sets desired and switch with other arm.'
    ),
    (
        'Dumbbell Front Incline Raise',
        'Shoulders',
        'Strength',
        'Dumbbell',
        '1.) To begin this exercise; start off by sitting with your back flat on an incline bench holding a dumbbell in each hand.2.) Push your arms out in front of you with your palms facing out above your thighs.3.) Taking the dumbbells, raise them straight up until they are above your shoulders holding onto this position for a few seconds, squeezing your shoulders tightly, then return back to the starting position.4.) Repeat this exercise for as many repetitions as needed'
    ),
    (
        'Dumbbell Front Raise',
        'Shoulders',
        'Strength',
        'Dumbbell',
        'Steps :1.) To begin this exercise; start off standing up straight holding dumbbells in each hand resting at your pelvis.2.) Lift the dumbbells up and out so that they are extended in front of your shoulders, at your shoulder level, holding onto this position for a few seconds.3.) Return back to the starting position.4.) Repeat this exercise for as many repetitions as needed'
    ),
    (
        'Dumbbell Front Raise (Hammer)',
        'Shoulders',
        'Strength',
        'Dumbbell',
        'Steps :1.) Start by sitting on a flat bench holding a dumbbell in each hand with a neutral hammer grip at your sides.2.) Slowly elevate both dumbbells up and in front of you towards shoulder level, squeezing your shoulder muscles on the way up.3.) Hold onto this position for a count then return back to the starting position.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Dumbbell Hammer Curl (Cross Body)',
        'Biceps',
        'Strength',
        'Dumbbell',
        'The cross body hammer curl exercise targets the biceps using a cross motion rather than the standard curl.1.) Start by standing up straight and grabbing a dumbbell in each hand with palms facing inward.2.) While keeping your palms facing in, curl the dumbbell up towards the opposite shoulder, isolating the bicep and squeezing the muscle.3.) Continue bringing the dumbbell up to touch the shoulder until you feel a stretch in your bicep and hold for a count.4.) Return back to the starting position and repeat for as many reps and sets as desired.'
    ),
    (
        'Dumbbell Hammer Curl (Neutral Grip)',
        'Biceps',
        'Strength',
        'Dumbbell',
        'The dumbbell hammer curl exercise uses a hammering (up and down) motion to isolate the bicep and increase muscle size.Steps :1.) Start by standing with your feet shoulder-width apart, keeping your knees slightly bent and your abs tight in.2.) Grab a dumbbell in each hand with your palms facing in (neutral grip), extend your arms so that they are at the sides of your body and keep your elbows locked as this will be your starting position.3.) Slowly lift your arms up in an arc towards your shoulders, isolating your biceps and continue until you reach the top position.4.) Hold for a count then return back to the starting position and repeat for as many reps and sets as desired.Tips : 1.) Refrain from turning your wrists during this exercise.'
    ),
    (
        'Dumbbell Hammer Curl on Stability Ball',
        'Biceps,Core,Shoulders',
        'Strength',
        'Dumbbell',
        '1.) Start by sitting on an exercise ball with dumbbell in each hand rested at your sides.2.) With both of your arms raise the weights up towards your shoulder, keeping the elbow close to your body and squeezing the bicep.3.) Return back to the starting position in a slowed and controlled motion.4.) Repeat for as many reps and sets desired.'
    ),
    (
        'Dumbbell Hammer Curl on Stability Ball',
        'Biceps',
        'Strength',
        'Dumbbell',
        'Steps :1.) Begin by sitting on an exercise ball, sitting up straight, feet flat on the floor in front of you and holding dumbbells in each hand to your sides.2.) Slowly raise both arms towards your shoulders, isolating the bicep, until you feel a tension.3.) Hold for a count then return back to the starting position.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Dumbbell Hammer Shoulder Press',
        'Shoulders,Triceps',
        'Strength',
        'Dumbbell',
        '1.) To begin this exercise; start off by taking a dumbbell in each hand and keep your arms extended down with your palms facing inward.2.) Take the dumbbells and slowly lift them until they are extended overhead.3.) Hold onto this position for a few seconds then lower the weights down into a 90-degree push position.4.) Repeat this exercise for as many repetitions as needed'
    ),
    (
        'Dumbbell Hamstring Curl',
        'Upper Legs',
        'Strength',
        'Dumbbell',
        'Steps :1.) Start by setting up an elevated flat bench on either a block or step and making sure that your resting point is secure.2.) Lie face down on the bench, placing a dumbbell at the lower end of the bench so that you will be able to grab it in between your feet, and that your knees are at the edge of the bench.3.) Pick the dumbbell up off of the floor with your feet, keeping your legs fully extended, and slowly curl the dumbbell up towards your buttocks by bending your knees.4.) Hold for a count when you feel a stretch in your hamstrings then return back to the starting position.5.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Dumbbell High Curl',
        'Biceps,Shoulders',
        'Strength',
        'Dumbbell',
        'Steps :1.) Stand up straight with a dumbbell in each hand, keeping feet about shoulder width apart, bringing your arms up to shoulder level and extend out in a "T" shape.2.) Then slowly curl your biceps so that the dumbbells are brought to your head, isolating the muscle, and keeping your arms at shoulder level during the entire motion.3.) Hold this position for a count then return back to the starting position.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Dumbbell Incline Alternating Hammer Curl',
        'Biceps',
        'Strength',
        'Dumbbell',
        '1.) Start by setting up an incline bench to either a 30 or 45 degree angle and then sit with your back flat on the bench, with a dumbbell in each hand and feet flat on the floor.2.) Hold the dumbbells in an neutral grip with your palms facing inward, then slowly lift one dumbbell up towards your shoulder, isolating the bicep and hold for a count.3.) Return back to the starting position and repeat with the opposite arm.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Dumbbell Incline Bench Curl',
        'Biceps',
        'Strength',
        'Bench',
        'Steps :1.) Start by setting up an incline bench to either a 30 or 45-degree angle and then position yourself behind the bench, with a dumbbell in one hand rested over the bench and knees bent on the floor.2.) Hold the dumbbell in an underhand grip with your palms facing up, then slowly lift the dumbbell up towards your shoulder, isolating the bicep and hold for a count.3.) Return back to the starting position.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Dumbbell Incline Bench Hammer Curl',
        'Biceps,Forearms',
        'Strength',
        'Bench',
        'Steps :1.) Start by setting up an incline bench to either a 30 or 45 degree angle and then position yourself behind the bench, with a dumbbell in one hand rested over the bench and knees bent on the floor.2.) Hold the dumbbell in a neutral grip with your palms facing inward, then slowly lift the dumbbell up towards your shoulder, isolating the bicep and hold for a count.3.) Return back to the starting position.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Dumbbell Incline Bench Press',
        'Chest,Shoulders,Triceps',
        'Strength',
        'Dumbbell',
        'This is a variation of the bench press exercise that utilizes dumbbells in order to help build a strong upper chest.Steps :1.) Start off by setting up a bench on a 30 degree incline and then place dumbbells by your feet.2.) Take the dumbbells and bring them to the starting position which is just above your chest, keeping your elbows bent so that your forearms are facing upward.3.) Then push the dumbbells up in a straight motion, focusing on squeezing your chest and targeting those muscles on the motion upward.4.) Raise the dumbbells up as high as you can without locking your elbows and hold for a count.5.) Return back down slowly to the starting position and repeat for as many reps and sets as desired.Tips :1.) It is important to use a weight that you can manage so that you are able to get into the starting position easier for this exercise.2.) You should have a spotter to help you with this exercise.'
    ),
    (
        'Dumbbell Incline Bench Press (Hammer Grip)',
        'Chest,Shoulders,Triceps',
        'Strength',
        'Dumbbell',
        '1.) Start by positing yourself in front of a free standing incline bench, grabbing a dumbbell in each hand with your palms facing in towards one another.2.) Sit down on the edge of the bench and lean back holding the dumbbell in each hand and rested upon your thighs.3.) Press the dumbbells up in a explosive motion and once at the top position hold for a count.4.) Squeeze your chest muscles and then return back to the starting position.5.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Dumbbell Incline Bench Press (Palms in)',
        'Chest,Shoulders',
        'Strength',
        'Dumbbell',
        '1.) Start by laying with your back flat on a incline bench with your feet rested on the floor and holding a dumbbell in each hand.2.) Keep the dumbbells rested at your chest as you get yourself into position, holding onto them with a neutral grip.3.) Extend your hands above your chest and squeeze so that you feel a stretch in your pecs, then hold for a count.4.) Then slowly return the dumbbells at the sides of your chest.5.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Dumbbell Incline Bench Row',
        'Back,Biceps',
        'Strength',
        'Dumbbell',
        '1.) Start by setting up an incline bench to around 35 or 45 degrees and laying down on it with your chest flat on the bench, holding a dumbbell in each hand extended down towards the floor.2.) Slowly pull the dumbbells up towards your chest, squeezing your back, and hold for a count.3.) Return back to the starting position.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Dumbbell Incline Curl',
        'Biceps',
        'Strength',
        'Dumbbell',
        'The incline dumbbell curl exercise uses an incline bench to change your body s position as you perform the bicep curl exercise.Steps :1.) Start by taking an incline bench and adjusting it to a 45-degree incline angle, then grabbing dumbbells in each and sitting down with your back against he bench with your feet rested on the floor in front of you.2.) Once in position let your arms hang down at your sides and while keeping your elbows straight, raise the dumbbells up towards your head, squeezing your biceps on the way up.3.) In the top position, hold for a count and then return back to the starting position.4.) Return back to the starting position and repeat for as many reps and sets as desired.'
    ),
    (
        'Dumbbell Incline Fly',
        'Chest,Shoulders',
        'Strength',
        'Dumbbell',
        'The dumbbell incline fly exercise is a chest sculpting exercise that helps build a bigger and stronger chest.1.) Start by lying on an incline bench set to 45-degrees and holding a dumbbell in each hand.2.) Lift the dumbbells up and over your chest, extending your arms fully as this will be your starting position.3.) While keeping a slight bend in your elbows, slowly  bring the dumbbells towards each other in an arc motion, squeezing your chest muscles in the process.4.) Hold this position for a count then slowly return back to the starting position.5.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Dumbbell Incline Fly (Stability Ball)',
        'Chest',
        'Strength',
        'Dumbbell',
        'Steps :1.) Start off by laying on an exercise ball in an incline position, with your feet flat on the floor, both hands holding a dumbbells and arms extended over your chest.2.) Keeping your elbow slightly bent, lower the weights down until they are about chest level and hold.3.) Return back to the starting position and repeat for as many reps and sets as desired.'
    ),
    (
        'Dumbbell Incline Fly With A Twist',
        'Chest,Shoulders',
        'Strength',
        'Dumbbell Bench',
        'The dumbbell incline fly with a twist exercise is an advanced exercise for the chest and is very good for sculpting and defining the pectoral muscles when used along with the bench press.Steps :1.) Start off lying on an incline bench set to a 45-degree angle with a dumbbell in each hand, keeping the dumbbells out to the side of your chest and parallel to the floor as you would with a regular fly.2.) Slowly raise the dumbbells up and over your chest in an arc motion until you feel a stretch in your muscles.3.) Once at the top position, turn your pinky fingers in so that they are facing each other and hold for a count.4.) Slowly return back to the starting position and repeat for as many reps and sets as desired.'
    ),
    (
        'Dumbbell Incline Hammer Curl',
        'Biceps',
        'Strength',
        'Dumbbell',
        'Steps :1.) Start by sitting on an incline bench with a dumbbell in each hand, arms to your side, and with your feet planted firmly in front of you.2.) Then flex at your elbows bringing the weights up to your shoulders, isolating the bicep, until you feel tension on the muscle.3.) Hold for a count then return back to the starting position and repeat for as many reps and sets as desired.'
    ),
    (
        'Dumbbell Incline Hammer Curl',
        'Biceps,Forearms',
        'Strength',
        'Dumbbell',
        'The dumbbell flexor incline curl exercise keeps stress on the biceps and helps strengthen the muscles.1.) Begin by sitting on an incline bench with your feet firmly on the floor in front of you and grabbing a dumbbell with your palms facing up.2.) Bring your arms down to your sides, keeping your wrists as straight as possible (i.e. neutral grip), raise your wrists to your shoulders.3.) Concentrate on squeezing your biceps as you raise your arms.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Dumbbell Incline Hammer Curl (Prone)',
        'Biceps,Forearms',
        'Strength',
        'Dumbbell',
        'Steps :1.) Begin by taking an adjustable bench and elevating it to around 30-degrees. With your legs extended behind you and toes on the floor, have your arms in front of you with a dumbbell in each hand.2.) Hold the dumbbells in a neutral grip and let them hang towards the ground.3.) Slowly elevate the weights up towards your shoulders, isolating your biceps, and hold for a count.4.) Return back to the starting position.5.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Dumbbell Incline Hammer Press (Stability Ball)',
        'Chest',
        'Strength',
        'Dumbbell',
        'Steps :1.) Begin by laying down on an exercise ball in an incline position with your feet flat on the floor and holding a dumbbell in both hands in a hammer grip with arms extended straight over your chest.2.) Then slowly lower your arms until they are at about shoulder, keeping a 90-degree angle in your elbows until you feel tension in your chest.3.) Hold this position for a count then return back to the starting position.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Dumbbell Incline One Arm Hammer Press',
        'Chest',
        'Strength',
        'Dumbbell Bench',
        'Steps :1.) Start off by laying down on an incline bench with your feet flat on the floor and holding a dumbbell in one hand in a hammer grip position with arm extended straight over your chest.2.) Then slowly lower your arm until it is at about shoulder, keeping a 90-degree angle in your arm until you feel tension in your chest.3.) Hold this position for a count then return back to the starting position.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Dumbbell Incline One-Arm Fly',
        'Chest',
        'Strength',
        'Dumbbell',
        'Steps :1.) Start off by laying on an incline bench, with your feet flat on the floor, one arm holding a dumbbell and arm extended over your chest.2.) Keeping your elbow slightly bent, lower the weight down until it is about chest level and hold.3.) Return back to the starting position and repeat for as many reps and sets as desired.'
    ),
    (
        'Dumbbell Incline One-Arm Fly on Stability Ball',
        'Chest',
        'Strength',
        'Dumbbell',
        'Steps :1.) Start by laying on an exercise ball in an incline position, with your feet flat on the floor, one arm holding a dumbbell and arm extended over your chest.2.) Keeping your elbow slightly bent, lower the weight down until it is about chest level and hold.3.) Return back to the starting position and repeat for as many reps and sets as desired.'
    ),
    (
        'Dumbbell Incline One-Arm Hammer Press (Stability Ball)',
        'Chest',
        'Strength',
        'Dumbbell',
        'Steps :1.) Start by laying down on an incline bench with your feet flat on the floor and holding a dumbbell in one hand in a hammer grip position with arm extended straight over your chest.2.) Then slowly lower your arm until it is at about shoulder level, keeping a 90-degree angle in your arm until you feel tension in your chest.3.) Hold this position for a count then return back to the starting position.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Dumbbell Incline One-Arm Press',
        'Chest',
        'Strength',
        'Dumbbell',
        'Steps :1.) Start off by laying down on an incline bench with your feet flat on the floor and holding a dumbbell in one hand with arm extended straight over your chest.2.) Then slowly lower your arm until it is at about shoulder, keeping a 90-degree angle in your arm until you feel tension in your chest.3.) Hold this position for a count then return back to the starting position.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Dumbbell Incline One-Arm Press (Stability Ball)',
        'Chest',
        'Strength',
        'Dumbbell',
        'Steps :1.) Start by laying down on an exercise ball in an incline position with your feet flat on the floor and holding a dumbbell in one hand with arm extended straight over your chest.2.) Then slowly lower your arm until it is at about shoulder level, keeping a 90-degree angle in your arm until you feel tension in your chest.3.) Hold this position for a count then return back to the starting position.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Dumbbell Incline Press on Stability Ball',
        'Chest',
        'Strength',
        'Dumbbell',
        'Steps :1.) Start off by laying down on an exercise ball in an incline position with your feet flat on the floor and holding a dumbbell in both hands with arms extended straight over your chest.2.) Then slowly lower your arms until they are at about shoulder, keeping a 90-degree angle in your arms until you feel tension in your chest.3.) Hold this position for a count then return back to the starting position.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Dumbbell Incline Press on Stability Ball',
        'Chest,Core',
        'Strength',
        'Dumbbell',
        'Steps :1.) Start by sitting on an exercise ball with a dumbbell in each hand.2.) Slowly roll down making sure that your head and shoulders are on the ball and your feet are planted firmly on the floor in front of you.3.) Lift your hips up so that they are lower than your knees and shoulders, so that you are in an incline position.4.) Take the dumbbells so that they are positioned over your chest with palms facing away from you and then lower them so that your arms are in a bent position.5.) Stop when your arms are in the same level as your shoulders, hold for a count and then return back to the starting position.6.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Dumbbell Incline Row (Reverse Grip)',
        'Back',
        'Strength',
        'Dumbbell',
        'Steps :1.) Start by setting up an incline bench to around 35 or 45 degrees and laying down on it with your chest flat on the bench2.) Hold a dumbbell in each hand, with a reverse grip, extended down towards the floor.3.) Slowly pull the dumbbells up towards your chest, squeezing your back, and hold for a count.4.) Return back to the starting position.5.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Dumbbell Incline Shoulder Raise',
        'Shoulders,Triceps',
        'Strength',
        'Dumbbell',
        '1.) To begin this exercise; start off by sitting with your back flat on an incline bench holding a dumbbell in each hand.2.) With the driving force of your legs, kick the weights above your shoulders and keep them overhead above your chest.3.) Using your shoulders and keeping your arms straight, lift up your dumbbells and push them as high as you can without leaving the bench.4.) Hold the position for a few seconds then return back to starting position.5.) Repeat this exercise for as many repetitions as needed'
    ),
    (
        'Dumbbell Incline Spider Curl',
        'Biceps,Forearms',
        'Strength',
        'Dumbbell',
        'The dumbbell incline spider curl exercise uses an incline bench to target the bicep muscles and build bigger arms.1.) Start by adjusting an incline bench to a 45-degree angle.2.) Grasp dumbbells in each hand and lean face down against the bench, with your feet resting on the floor for support.3.) Allow your arms to hang down at your sides.4.) Keeping your elbow straight, raise the dumbbells up towards your head, contracting your biceps.5.) In a controlled manner lower the weight and repeat.'
    ),
    (
        'Dumbbell Incline Tricep Extension',
        'Triceps,Shoulders',
        'Strength',
        'Dumbbell',
        'The dumbbell incline triceps extension exercise uses an incline bench to target the tricep muscles.Steps :1.) Start off grabbing a dumbbell in each hand and lie against an incline bench, face up with your feet firmly planted on the floor in front of you.2.) Extend your arms over your shoulders with your palms facing each other and then slowly lower the dumbbells behind your head by bending your elbows.3.) Hold this position for a count.4.) Then with a controlled motion raise your arms back up to the starting position.5.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Dumbbell Incline Tricep Extension',
        'Triceps',
        'Strength',
        'Dumbbell',
        'Steps :1.) Start by sitting your back flat on an incline bench with your feet on the floor in front of you, holding a dumbbell on your legs.2.) Elevate the weight above your head as this will be your starting position.3.) Slowly lower the dumbbell behind your head as far as possible by extending both arms and squeeze your triceps.4.) Hold for a count then return back to the starting position.5.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Dumbbell Inner Bicep Curl',
        'Biceps',
        'Strength',
        'Dumbbell',
        '1.) To begin this exercise; sit down on a flat bench at the very edge with a dumbbell in each hand and elbows close to the pelvis. 2.) Keep the palms of the hands so that they are facing inward towards the body.3.) Curl the dumbbell out and up, keeping the forearms lined up with the deltoids.4.) Continue performing until the biceps are fully contracted and squeeze tightly, holding for a few seconds then bring back down to the starting positions.5.) Repeat this exercise for as many repetitions as needed.'
    ),
    (
        'Dumbbell Iron Cross',
        'Upper Legs,Shoulders,Glutes',
        'Strength',
        'Dumbbell',
        'The iron cross exercise is an advanced workout that works and strengthens the whole body.1.) Start by gripping a dumbbell in each hand, and stand in a low squat stance with your feet shoulder-width apart and arms held out in front of you with your palms facing in.2.) Standing upright, move your arms out and away from your body forming a T or cross position.3.) Hold for a count then return back to the starting position.4.) Repeat for as many reps and sets as desired.Tips : 1.) Do this exercise with light weights until you are comfortable with the motion.'
    ),
    (
        'Dumbbell Jump Squat',
        'Upper Legs,Glutes,Lower Legs',
        'Strength',
        'Dumbbell',
        'Steps :1.) Start by standing up straight, feet shoulder width apart and holding a dumbbell in each hand at your sides with a neutral grip.2.) Slightly bend with your knees, keeping your back straight and chest pushed out.3.) Squat down until your thighs are parallel with the floor, then explode upward driving the balls of your feet into the floor and jumping as high as possible then returning back to the squatting position.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Dumbbell Kneeling Bicep Curl (Stability Ball)',
        'Biceps,Triceps,Core',
        'Strength',
        'Dumbbell Exercise Ball',
        'Steps :1.) Start off kneeling on an exercise ball, making sure that you find and get your balance first, with a dumbbell in one of your hands.2.) Hold the dumbbell palms up at hip level and slowly curl the weight to chest level, pause and then lower back down to the starting position under control.3.) Repeat for the number of reps and sets desired and switch arms.'
    ),
    (
        'Dumbbell Kneeling Lateral Raise (Stability Ball)',
        'Shoulders,Core',
        'Strength',
        'Dumbbell',
        'Steps :1.) Start by kneeling on an exercise ball, keeping your body upright with your arms at your sides holding a dumbbell in each hand.2.) Slowly extend and lift your arms to about shoulder height and then return back to the start, repeating for as many reps and sets as desired.'
    ),
    (
        'Dumbbell Lateral Lunge with Bicep Curl',
        'Upper Legs,Biceps,Glutes',
        'Strength',
        'Dumbbell',
        'The lateral lunge with a dumbbell bicep curl exercise is an advanced workout that combines a lateral lunge with a bicep curl1.) Start by grabbing a dumbbell in each hand with your palms facing up and standing up straight with your feet together, your back straight and your abs drawn in.2.) Allow your arms to extend down fully in front of your thighs.3.) While keeping your body straight, take a step sideways and then bend your waist and your knee into a lunge.4.) As you go into the lunge curl your arms up towards your shoulders contracting your biceps, squeezing the muscle.5.) Hold for a count and then return to starting position and switch legs.6.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Dumbbell Lateral Raise',
        'Shoulders',
        'Strength',
        'Dumbbell',
        'The dumbbell lateral raise exercise helps build strong shoulders and muscle mass.Steps :1.) Start off standing up straight with your feet shoulder-width apart, keeping your abs tight and holding a dumbbell in each hand with your palms facing towards your body.2.) Slightly bend at your knees and then slowly raise your arms at your sides until your palms face the floor.3.) Once you reach the top position, hold for a count, squeezing your shoulder muscles then return back to the starting position.Tips :1.) You want to feel as if you are leading with your elbows.2.) Refrain from swinging the weights as that is improper form and your shoulders should do the lifting, not by momentum.'
    ),
    (
        'Dumbbell Lateral Raise (Prone)',
        'Shoulders',
        'Strength',
        'Dumbbell',
        'The rear lateral raise exercise is one of the best ways to work your shoulders and build muscle mass.Steps :1.) Start off by placing a dumbbell on each side of a incline bench and lie face down on the bench with your toes planted on the floor.2.) Grab a dumbbell in each hand with your palms facing down and then raise your arms up until your elbows are at shoulder height.3.) Hold for a count and keep your arms perpendicular to your chest then return back to the starting position.Tips :1.) It is important to keep your wrists straight during the exercise and your elbows above your wrists.2.) Refrain from swinging the dumbbells and lift using your shoulders.'
    ),
    (
        'Dumbbell Lateral Raise (Side-Lying)',
        'Shoulders',
        'Strength',
        'Dumbbell',
        '1.) To begin this exercise; start off by holding a dumbbell in one hand and lying on your side on a flat bench.2.) Have the dumbbell resting on the edge of the bench just across from your chest.3.) Take the dumbbell and raise it with your arm until it is at shoulder height and parallel to the floor.4.) Return the dumbbell back to the starting position.5.) Repeat this exercise for as many repetitions as needed'
    ),
    (
        'Dumbbell Lateral Raise (Stability Ball)',
        'Shoulders',
        'Strength',
        'Dumbbell',
        'Steps :1.) Start by sitting upright on an exercise ball, holding a dumbbell in each hand hanging down by your sides.2.) Then laterally lift up both arms to about shoulder height, feeling tension in your shoulders and hold for a count.3.) Return back to the starting position and repeat for as many reps and sets as desired.'
    ),
    (
        'Dumbbell Lunge',
        'Upper Legs,Lower Legs,Glutes',
        'Strength',
        'Dumbbell',
        'The dumbbell lunge exercise helps strengthen and build the legs through the use of dumbbells.1.) Start by grabbing a dumbbell in each hand and standing with your feet about 8 inches apart and toes facing forward as this will be your starting position.2.) Once in position take a step forward (about 2 to 3 feet), keeping your abs tightly drawn and and your upper body straight.3.) Continue forward and slowly lower one knee down towards the ground and keeping the other knee bent at a 90 degree angle, not letting the back knee touch the ground.4.) Slowly lower one knee down as if kneeling while keeping your other knee bent at a 90 degree angle, do not let your knee touch the ground.5.) Hold the position for a count then return back up to the starting position.Tips :1.) Refrain from putting the pressure of your body on one knee as this can cause imbalance and incorrectly performing this exercise.2.) The knee you are leaning forward on should not move beyond the toe of this foot.'
    ),
    (
        'Dumbbell Lunge Tricep Extension',
        'Triceps,Upper Legs,Lower Legs',
        'Strength',
        'Dumbbell',
        'Steps :1.) Start by standing up straight with your feet shoulder width apart holding dumbbells behind your head.2.) Lunge forward with one leg by bending at your hips and keeping the other leg straight.3.) Keep most of the weight and focus positioning the dumbbells on the lunging leg and do an overhead tricep extension, feeling a stretch in your muscles.4.) Lower the weights slowly back down and then return back to the starting position, repeating in the opposite direction on the other leg.5.) Repeat for as many reps and sets desired.'
    ),
    (
        'Dumbbell Lunge with Bicep Curl Bowling Motion',
        'Biceps,Triceps,Upper Legs',
        'Strength',
        'Dumbbell',
        'The dumbbell bicep lunge with bicep curl bowling motion exercise is an exercise that targets the bicep muscle using a motion similar to bowling.1.) Start by holding a medicine ball or dumbbell in both hand with your palms facing up at shoulder height.2.) Bring one foot back and into a lunge, keeping your front foot stationary and not letting your back knee touch the ground.3.) While lunging bring the ball or dumbbells down and back as if you were bowling, feeling a stretch in your biceps.4.) Bring your arm back up to the starting position, switch legs and repeat.5.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Dumbbell One-Arm Arnold Press',
        'Shoulders,Triceps',
        'Strength',
        'Dumbbell',
        'Steps :1) Begin by standing up straight with feet shoulder width apart holding a dumbbell in one hand.2.) Slowly, while using your thighs, raise the dumbbell to shoulder height and rotate your palm so that it is facing in towards your body.3.) From there raise the dumbbell above your head, squeezing in your shoulder, and hold for a count.4.) Return back to the starting position.5.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Dumbbell One-Arm Arnold Press (Stability Ball)',
        'Shoulders,Core',
        'Strength',
        'Dumbbell',
        'Steps :1.) Start by sitting on an exercise ball with a dumbbell in each hand.2.) Elevate the dumbbells up towards your shoulders with your palms facing towards you in an arnold press position.3.) Slowly press one of the dumbbells up towards the ceiling, rotating your wrist outward, until your arm is fully extended.4.) Then return back to the starting position, rotating your wrist back inward, and repeat for as many reps and sets as desired.'
    ),
    (
        'Dumbbell One-Arm Bench Press',
        'Chest,Shoulders,Triceps',
        'Strength',
        'Dumbbell',
        'The dumbbell one arm bench press is a very advanced exercise that is mostly used by body builders and power lifters to build stronger pectoral muscles.Steps :1.) Start off lying with your back flat on the bench with your feet placed firmly on the floor in front of you.2.) Grab a dumbbell in one hand and bring it up to the side of your chest as this will be your starting position.3.) Once in position, extend your arm straight out in front of you, pressing the dumbbell up until your arm is straight, elbow is locked and you feel a stretch in the chest muscle.4.) Hold this position for a count and then in a controlled motion, lower the weight back down to the starting position.5.) Switch arms and repeat for as many reps and sets as desired.'
    ),
    (
        'Dumbbell One-Arm Bench Press',
        'Chest,Shoulders,Triceps',
        'Strength',
        'Bench',
        'Steps :1.) Start by laying with your back on a flat bench, feet flat on the floor and one arm holding a dumbbell at chest level.2.) Slowly push the dumbbell up with your arm, squeezing your chest on the way up until you feel tension on your muscles.3.) Hold the position for a count then return back to the starting position and repeat for as many reps and sets as desired.'
    ),
    (
        'Dumbbell One-Arm Bent-Over Reverse Fly',
        'Shoulders',
        'Strength',
        'Dumbbell',
        'Steps :1.) Start by sitting on the end of a flat bench with your feet together on the floor in front of you and a dumbbell in one hand.2.) Bend down so that your chest is rested upon your thighs and position the dumbbell underneath your legs.3.) Slowly elevate the dumbbell up and out to around head level and squeeze your shoulder.4.) Hold for a count then return back to the starting position.5.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Dumbbell One-Arm Bent-Over Reverse Fly',
        'Shoulders',
        'Strength',
        'Dumbbell',
        'Steps :1.) Start by standing up straight with your feet shoulder width apart, holding a dumbbell in one hand at your side.2.) Bend down so that your body is parallel with the floor and bring the weight in front of you to about knee level.3.) Slowly extend the arm holding the weight up and out so that the weight is at level with your head and squeeze your shoulder.4.) Hold for a count then return back to the starting position.5.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Dumbbell One-Arm Bicep Curl',
        'Biceps',
        'Strength',
        'Dumbbell',
        'Steps :1.) Start by standing up straight, with a dumbbell in one hand and feet flat on the floor.2.) Hold the dumbbell in an underhand grip with your palms facing up, then slowly lift the dumbbell up towards your shoulder, isolating the bicep and hold for a count.3.) Return back to the starting position.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Dumbbell One-Arm Bicep Curl (Prone)',
        'Biceps',
        'Strength',
        'Dumbbell',
        'Steps :1.) Start by taking an adjustable bench and elevating it to around 30 degrees, with your legs extended behind you and toes on the floor, and your arms in front of you with a dumbbell in one hand.2.) Hold the dumbbell in an underhand grip and let it hang towards the ground.3.) Slowly elevate the weight up towards your shoulders, isolating your bicep, and hold for a count.4.) Return back to the starting position.5.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Dumbbell One-Arm Bicep Curl on Stability Ball',
        'Biceps,Core',
        'Strength',
        'Dumbbell',
        'Steps :1.) Begin by sitting on an exercise ball holding a dumbbell in one hand and keeping both feet evenly planted on the floor.2.) Slowly lift the weight up towards your shoulders and stopping at chest level, making sure to squeeze your bicep and isolate the motion.3.) Return back to the starting position and repeat for as many reps as desired.4.) Switch arms and repeat.'
    ),
    (
        'Dumbbell One-Arm Decline Chest Press',
        'Chest',
        'Strength',
        'Dumbbell',
        'Steps :1.) Start off by laying on a decline bench with your feet under foot holders. 2.) One arm is holding a dumbbell and extended the arm above your chest.3.) Slowly lower your arm to shoulder level, maintaining a 90-degree angle in your arm until you feel a tension in your chest.4.) Hold this position for a count then return back to the starting position.5.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Dumbbell One-Arm Fly',
        'Chest,Shoulders,Triceps',
        'Strength',
        'Dumbbell',
        'The dumbbell one arm bench fly is similar to the dumbbell fly exercise and helps build strength and size in your chest muscles.Steps :1.) Start by lying on a flat bench with your free hand holding the bench and the other hand grabbing onto a dumbbell, keeping your forearm parallel to the floor.2.) Once in position, slowly raise your arm in an arc over and above the middle of your chest.3.) Continue until you feel a stretch in your pec muscles and then slowly return back to the starting position.'
    ),
    (
        'Dumbbell One-Arm Fly (Stability Ball)',
        'Chest',
        'Strength',
        'Dumbbell',
        '1.) Start by sitting on an exercise ball with a dumbbell in one hand.2.) Slowly roll down making sure that your head and shoulders are on the ball and your feet are planted firmly on the floor in front of you.3.) Position the dumbbell straight up over your chest and then lower your arm down letting it bend slightly until the weight reaches shoulder level.4.) Return back to the starting position and repeat with the opposite arm for as many reps and sets as desired.'
    ),
    (
        'Dumbbell One-Arm Fly on Stability Ball',
        'Chest',
        'Strength',
        'Dumbbell',
        'Steps :1.) Start by laying on an exercise ball, with your feet flat on the floor, one arm holding a dumbbell and arm extended over your chest.2.) Keeping your elbow slightly bent, lower the weight down until it is about chest level and hold.3.) Return back to the starting position and repeat for as many reps and sets as desired.'
    ),
    (
        'Dumbbell One-Arm French Press (Stability Ball)',
        'Triceps,Core,Shoulders',
        'Strength',
        'Dumbbell',
        'Steps :1.) Start by sitting on an exercise ball with a dumbbell in one hand.2.) Slowly roll down making sure that your head and shoulders are on the ball and your feet are planted firmly on the floor in front of you.3.) Extend the dumbbell behind your head with bent elbow then push the weight up towards the ceiling until your arm is fully extended.4.) Return the weight back down to the starting position and repeat for as many reps and sets desired.5.) Switch to the other hand and repeat.'
    ),
    (
        'Dumbbell One-Arm Front Raise',
        'Shoulders,,',
        'Strength',
        'Dumbbell',
        'Performing the Dumbbell Front Raise exercise, it helps improve arm movement and build better sculpted shoulders.Steps :1.) Start by grasping a dumbbell in both hands, holding them with an overhand grip and position the dumbbells in front of your legs with a slight bend.2.) Slowly raise the dumbbells forward until your arms are higher than parallel.3.) Once you reach the top position, hold for a count then briefly then lower in a controlled manner.Tips : 1.) Squeeze your abs tightly to help support your back and make sure not to lock your elbows.'
    ),
    (
        'Dumbbell One-Arm Front Raise',
        'Shoulders',
        'Strength',
        'Dumbbell',
        'Steps :1.) Start by setting up an incline bench and sit down with your back flat on the bench with your feet in front of you, holding a dumbbell in each hand at your sides.2.) Slowly elevate your arm up and out to about head level and squeeze your shoulders on the way up.3.) Hold for a count then return back to the starting position and repeat with the opposite arm.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Dumbbell One-Arm Front Raise',
        'Shoulders',
        'Strength',
        'Dumbbell',
        'Steps :1.) Start by standing up straight with a dumbbell in one hand with your palm facing inward.2.) Slowly elevate the dumbbell up and out until it reaches shoulder level.3.) Hold for a count then return back to the starting position4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Dumbbell One-Arm Front Raise',
        'Shoulders',
        'Strength',
        'Dumbbell',
        'Steps :1.) Start by standing up straight with your feet shoulder width apart and holding a dumbbell in one hand at your side.2.) Slowly elevate your arm up in front of you to about head level, feeling a stretch in your shoulders and squeeze, and hold for a count.3.) Return back to the starting position.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Dumbbell One-Arm Hammer Curl',
        'Biceps,Forearms',
        'Strength',
        'Dumbbell',
        'Steps :1.) Start by standing up straight, with a dumbbell in one hand and feet flat on the floor.2.) Hold the dumbbell in an neutral grip with your palms facing inward, then slowly lift the dumbbell up towards your shoulder, isolating the bicep and hold for a count.3.) Return back to the starting position.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Dumbbell One-Arm Hammer Curl (Prone)',
        'Biceps,Forearms',
        'Strength',
        'Dumbbell',
        'Steps :1.) Start by taking an adjustable bench and elevating it to around 30 degrees, with your legs extended behind you and toes on the floor, and your arms in front of you with a dumbbell in one hand.2.) Hold the dumbbell in a neutral grip and let it hang towards the ground.3.) Slowly elevate the weight up towards your shoulders, isolating your bicep, and hold for a count.4.) Return back to the starting position.5.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Dumbbell One-Arm Hammer Press',
        'Chest',
        'Strength',
        'Dumbbell',
        '1.) Start off by laying down on an flat bench with your feet flat on the floor and holding a dumbbell in one hand in a hammer grip position with arm extended straight over your chest.2.) Then slowly lower your arm until it is at about shoulder, keeping a 90-degree angle in your arm until you feel tension in your chest.3.) Hold this position for a count then return back to the starting position.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Dumbbell One-Arm Hammer Press (Stability Ball)',
        'Chest',
        'Strength',
        'Dumbbell',
        'Steps :1.) Start off by laying down on an exercise ball with your feet flat on the floor and holding a dumbbell in one hand in a hammer grip position with arm extended straight over your chest.2.) Then slowly lower your arm until it is at about shoulder level, keeping a 90-degree angle in your arm until you feel tension in your chest.3.) Hold this position for a count then return back to the starting position.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Dumbbell One-Arm Hammer Shoulder Press',
        'Shoulders,Triceps',
        'Strength',
        'Dumbbell',
        'Steps :1.) Begin standing up straight with your feet shoulder width apart, holding a dumbbell in one arm at head level in a neutral grip so that your palms are facing in.2.) Slowly elevate the dumbbell up and above your head while squeezing your shoulder.3.) Hold for a count then return back to the starting position.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Dumbbell One-Arm Incline Chest Press',
        'Chest',
        'Strength',
        'Dumbbell',
        'Steps :1.) Start by laying down on an incline bench with your feet flat on the floor and holding a dumbbell in one hand with arm extended straight over your chest.2.) Then slowly lower your arm until it is at about shoulder, keeping a 90-degree angle in your arm until you feel tension in your chest.3.) Hold this position for a count then return back to the starting position.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Dumbbell One-Arm Incline Curl',
        'Biceps',
        'Strength',
        'Dumbbell',
        '1.) Start by setting up an adjustable bench to an incline level so that you can comfortably rest your arm down the back of the headrest.2.) Grab a dumbbell in one arm and extend it over the bench so that your forearm and tricep are rested upon the bench.3.) Hold onto the top of the bench with the opposite arm to stabilize your body and to balance the weight.4.) Slowly elevate the dumbbell up towards your shoulder, isolating the bicep and squeeze your muscle.5.) Hold this position for a count then return back to the starting position.6.) Repeat for as many reps and sets as desired.Tips1.) Perform this exercise in a slow controlled manner for best results.'
    ),
    (
        'Dumbbell One-Arm Incline Lateral Raise',
        'Shoulders',
        'Strength',
        'Dumbbell',
        '1.) To begin this exercise; start off lying sideways on an incline bench with a dumbbell in one hand and the other pushing the shoulder up against the bench.2.) Keep the dumbbell rested next to your pelvis and perform a lateral raise so that the dumbbell is overhead pressed and pointing at the ceiling. 3.) Hold onto this position for a few seconds.4.) Return back down to the starting position.5.) Repeat this exercise for as many repetitions as needed.'
    ),
    (
        'Dumbbell One-Arm Lateral Raise',
        'Shoulders',
        'Strength',
        'Dumbbell',
        '1.) To begin this exercise; start off by holding a dumbbell in one hand and standing straight up next to an incline bench.2.) Have the dumbbell resting on your side next to your pelvis.3.) Take the dumbbell and raise it with your arm until it is at shoulder height and parallel to the floor.4.) Return the dumbbell back to the starting position.5.) Repeat this exercise for as many repetitions as needed'
    ),
    (
        'Dumbbell One-Arm Lateral Raise (Prone)',
        'Shoulders,Back',
        'Strength',
        'Dumbbell',
        'The lying one arm rear lateral raise exercise is an advanced workout that will target your shoulders, mostly your rear deltoids.1.) Start off lying prone on a bench, with your chest rested upon the bench and facing the ground.2.) Grab a dumbbell in one of your hands and let it hang off of the side of the bench.3.) While holding onto the dumbbell, raise your arm up by squeezing and contracting your deltoid.4.) Hold this position for a count then return back to the starting position.5.) Repeat with the opposite arm.'
    ),
    (
        'Dumbbell One-Arm Lateral Raise (Stability Ball)',
        'Shoulders,Core',
        'Strength',
        'Dumbbell',
        '1.) Start off by sitting straight up on an exercise ball with both feet together and one hand holding a dumbbell.2.) Lift the dumbbell to shoulder height, keeping the dumbbell straight during the entire motion then slowly return back to the starting position.3.) Repeat for as many reps and sets as possible and then switch to the other arm.'
    ),
    (
        'Dumbbell One-Arm Posterior Fly on Stability Ball',
        'Shoulders,Back,Core',
        'Strength',
        'Dumbbell',
        '1.) Start off sitting on an exercise ball with both feet together, your chest close to your knees and arms hanging down in front with a dumbbell in one hand.2.) While maintaining a flat back, lift the weight to shoulder height allowing the arm to bend slightly and hold for a count, as the other arm stays in front of you.3.) Return back to the starting position and repeat for as many reps and sets desired.'
    ),
    (
        'Dumbbell One-Arm Preacher Curl',
        'Biceps',
        'Strength',
        'Dumbbell',
        'The one-arm dumbbell preacher curl is a variation of the preacher curl exercise that uses dumbbells and single arm movements for better control of the bicep and targeting of the muscles.Steps :1.) Start by taking a preacher bench and adjusting the seat so that your arm is level with the top of the bench.2.) Grab a dumbbell with an underhand (palms up) grip and rest your arm against the bench with your arm extended fully down.3.) Slowly curl the dumbbell up towards your head, keeping your arm on the bench at all times, until you reach the top position.4.) Hold for a count, squeezing and isolating your bicep, and return back to the starting position.Tips : 1.) Perform this exercise in a slow controlled manner for best results.'
    ),
    (
        'Dumbbell One-Arm Preacher Hammer Curl',
        'Biceps,Forearms',
        'Strength',
        'Machine - Strength',
        'Steps :1.) Start by setting up a preacher bench and then position yourself behind the bench, with a dumbbell in one hand rested over the bench and feet flat on the floor.2.) Hold the dumbbell in a neutral grip with your palms facing inward, then slowly lift the dumbbell up towards your shoulder, isolating the bicep and hold for a count.3.) Return back to the starting position.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Dumbbell One-Arm Press (Palms In)',
        'Shoulders,Triceps',
        'Strength',
        'Dumbbell',
        '1.) To begin this exercise; start off by holding a dumbbell in one hand and standing straight up next to an incline bench.2.) Have the dumbbell pressed up on your shoulder with palms facing in towards your head.3.) Take the dumbbell and press it with your arm until it is at overhead and hold position for a few seconds.4.) Return the dumbbell back to the starting position.5.) Repeat this exercise for as many repetitions as needed'
    ),
    (
        'Dumbbell One-Arm Press (Reverse Grip)',
        'Chest,Shoulders,Triceps',
        'Strength',
        'Dumbbell',
        'Steps :1.) Start by laying with your back flat on a flat bench holding a dumbbell in one hand with a reverse grip so that your palms are facing in and towards you.2.) Slowly press the dumbbell up towards the ceiling and squeeze your chest.3.) Hold for a count then return back to the starting position.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Dumbbell One-Arm Press (Stability Ball)',
        'Chest',
        'Strength',
        'Dumbbell',
        'Steps :1.) Start off by laying down on an exercise ball with your feet flat on the floor and holding a dumbbell in one hand with arm extended straight over your chest.2.) Then slowly lower your arm until it is at about shoulder level, keeping a 90 degree angle in your arm until you feel tension in your chest.3.) Hold this position for a count then return back to the starting position.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Dumbbell One-Arm Pullover',
        'Back,Core,Shoulders',
        'Strength',
        'Dumbbell',
        'Steps :1.) Start off by laying on your back on an exercise ball with a dumbbell grasped in one hand and your feet firmly on the floor.2.) Once in position slowly roll down on the ball while keeping your shoulders, neck and head still.3.) Lift the dumbbell high up above your head and then slowly behind you and the exercise ball.4.) Hold this position for a few seconds then return back to the start and repeat for as many reps and sets desired.'
    ),
    (
        'Dumbbell One-Arm Pullover (Stability Ball)',
        'Chest,Back,Shoulders',
        'Strength',
        'Dumbbell',
        'Steps :1.) Start by laying on your back on an exercise ball with the middle of your back placed on the top of the ball.2.) Hold a dumbbell in one hand raised high above your chest and slowly extend the weight behind your head slightly bending your elbow until your arm create a straight line with your body and you feel a stretch in your chest.3.) Return back up slowly to the starting position and repeat for as many reps and sets as desired.'
    ),
    (
        'Dumbbell One-Arm Rear Row (Prone)',
        'Back',
        'Strength',
        'Dumbbell',
        'Steps :1.) Start by lying on your stomach on an incline bench with a dumbbell in one hand and keep it extended down in front of you2.) Slowly pull the dumbbell up until your elbow is just above your shoulder.3.) Hold for a count and squeeze your back muscles.4.) Return back to the starting position and repeat for as many reps and sets as desired.'
    ),
    (
        'Dumbbell One-Arm Reverse Bench Wrist Curl',
        'Forearms',
        'Strength',
        'Dumbbell',
        'Steps :1.) Start by kneeling in front of a horizontal bench with your forearms rested upon the padding and holding a dumbbell in one hand with a reverse grip.2.) Slowly lower the dumbbell down below the bench as far as possible squeezing your forearms and hold for a count.3.) Then return back to the starting position.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Dumbbell One-Arm Reverse Curl',
        'Forearms,Biceps',
        'Strength',
        'Dumbbell',
        'Steps :1.) Start by standing up straight, feet shoulder width apart and arms rested at your sides holding a dumbbell in one hand with a palms down reverse grip.2.) Slowly elevate the dumbbell up to your shoulder, squeezing your forearm, and hold for a count.3.) Return back to the starting position4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Dumbbell One-Arm Reverse Fly',
        'Shoulders',
        'Strength',
        'Dumbbell',
        'Steps :1.) Begin by setting up on a flat bench with your chest resting on the bench, feet extended behind you, holding a dumbbell in one hand, and arms rested down towards the floor.2.) Slowly, using your shoulders, raise your arm up towards the ceiling, squeezing on the way up and hold for a count.3.) Return back to the starting position.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Dumbbell One-Arm Reverse Fly',
        'Shoulders',
        'Strength',
        'Dumbbell',
        'Steps :1.) Begin by setting up an incline bench with your chest rested upon the bench with feet extended behind you, toes on the floor, holding a dumbbell in one hand, and arms rested down towards the floor.2.) Slowly, using your shoulders, raise your arm up towards the ceiling, squeezing on the way up and hold for a count.3.) Return back to the starting position.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Dumbbell One-Arm Reverse Preacher Curl',
        'Forearms,Biceps',
        'Strength',
        'Dumbbell',
        'Steps :1.) Start by sitting on a preacher bench with your upper arms resting upon the padding and holding a dumbbell in one hand with a reverse grip.2.) Slowly raise the dumbbell up towards your shoulders, squeezing in your forearms and hold for a count.3.) Return back to the starting position.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Dumbbell One-Arm Reverse Spider Curl',
        'Biceps,Shoulders,Forearms',
        'Strength',
        'Dumbbell',
        'Steps :1.) Start by grabbing a dumbbell in one hand, holding it with a reverse grip so that your palm is facing inward and position yourself lying face first on an inclined bench.2.) Then extend your bicep down and out in front of you so that you are able to fully contract your3.) Contract your bicep and curl the weight up towards your shoulder, squeezing your muscle in the process and isolating the bicep4.) Hold for a count when you reach the top position then return back to the starting position.5.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Dumbbell One-Arm Reverse Wrist Curl',
        'Forearms',
        'Strength',
        'Bench',
        'Steps :1.) Start by sitting on the end of a flat bench with your feet flat on the floor and holding a dumbbell in one hand using a reverse grip.2.) Rest the arm holding the dumbbell on the same leg so the weight is extended off.3.) Slowly lower the weight down below your leg, squeeze using your forearm and hold for a count.4.) Return back to the starting position.5.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Dumbbell One-Arm Row',
        'Back,Biceps',
        'Strength',
        'Dumbbell',
        '1.) Start by kneeling over the side of a bench placing the knee and hand of the supporting arm on the bench and then position the opposite foot on the floor.2.) Grab a dumbbell from the floor opposite of the side supporting the body and pull the dumbbell up slowly to your chest, feeling a stretch in your back until it almost makes contact with your chest.3.) Hold this position for a count, then return slowly back to the starting position.4.) Repeat for as many reps and sets as desired and switch with the opposite arms.'
    ),
    (
        'Dumbbell One-Arm Row (Reverse Grip)',
        'Back,Biceps,Shoulders',
        'Strength',
        'Dumbbell',
        '1.) Start by setting up an incline bench to around 35 or 45 degrees and laying down on it with your chest flat on the bench2.) Hold a dumbbell in one hand, with a reverse grip, extended down towards the floor.3.) Slowly pull the dumbbell up towards your chest, squeezing your back, and hold for a count.4.) Return back to the starting position.5.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Dumbbell One-Arm Row (Stability Ball)',
        'Back,Glutes,Shoulders',
        'Strength',
        'Dumbbell',
        'Steps :1.) Start off laying prone with your hips on an exercise ball with one hand gripping a dumbbell and other arm at the side of the ball.2.) Once in position, pull the weight upwards, keeping your elbow wide, and retract your shoulder to reach its peak until you feel a stretch.3.) Slowly return back to the starting position and repeat for as many reps and sets desired.'
    ),
    (
        'Dumbbell One-Arm Seated Curl',
        'Biceps',
        'Strength',
        'Dumbbell',
        'Steps :1.) Start by setting up a flat bench and then sit down on the bench, with a dumbbell in one hand and feet flat on the floor.2.) Hold the dumbbell in an underhand grip with your palms facing up, then slowly lift the dumbbell up towards your shoulder, isolating the bicep and hold for a count.3.) Return back to the starting position.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Dumbbell One-Arm Seated Hammer Curl',
        'Biceps,Forearms',
        'Strength',
        'Dumbbell',
        'Steps :1.) Start by setting up a flat bench and then sit down on the bench, with a dumbbell in one hand and feet flat on the floor.2.) Hold the dumbbell in a neutral grip with your palms facing inward, then slowly lift the dumbbell up towards your shoulder, isolating the bicep and hold for a count.3.) Return back to the starting position.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Dumbbell One-Arm Shoulder Press',
        'Shoulders',
        'Strength',
        'Dumbbell',
        'Steps :1.) Start off by sitting at the end of a bench straight up, gripping a dumbbell in one hand and keeping it parallel to your head.2.) Slowly press the weight upward until the elbow is next to your ear and hold for a count.3.) Return back to the starting position and repeat for as many reps and sets as desired.'
    ),
    (
        'Dumbbell One-Arm Shoulder Press',
        'Shoulders,Triceps',
        'Strength',
        'Dumbbell',
        'Steps :1.) Start by standing up straight, holding a dumbbell in one arm at shoulder level next to your head.2.) Slowly elevate your arm up and above your head, squeezing in your shoulder and hold for a count.3.) Return back to the starting position.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Dumbbell One-Arm Shoulder Press',
        'Shoulders,Triceps',
        'Strength',
        'Dumbbell',
        'Targeting your deltoids, the dumbbell one arm shoulder press is a great exercise to help build strong shoulders.Steps :1.) Start off standing up straight with your feet shoulder-width apart, your abs tight and back straight.2.) Grab a dumbbell and hold it at the side of your head, keeping the dumbbell inline with your ear.3.) Once in position, slowly raise the dumbbell up by squeezing your deltoids and extending your arm out.4.) Continue to raise the dumbbell up until your arm is fully extended and squeeze your shoulder muscles.5.) Return back to the starting position and repeat for as many reps and sets as desired.Tips : 1.) Don t lock your elbows at the top position of this exercise.'
    ),
    (
        'Dumbbell One-Arm Shoulder Press (Stability Ball)',
        'Shoulders',
        'Strength',
        'Dumbbell',
        'Steps :1.) Start by sitting on an exercise ball straight up, gripping a dumbbell in one hand and keeping it parallel to your head.2.) Slowly press the weight upward until the elbow is next to your ear and hold for a count.3.) Return back to the starting position and repeat for as many reps and sets as desired.'
    ),
    (
        'Dumbbell One-Arm Single-Leg Bicep Curl on Stability Ball',
        'Biceps,Core,Upper Legs',
        'Strength',
        'Dumbbell',
        '1.) Start by sitting on an exercise ball, holding onto a dumbbell in one hand and elevating a leg on the same side.2.) Lift up the weight, while keeping the leg raise, and curl it up to chest level, making sure to isolate the bicep and then return back to the starting position.3.) Repeat for as many repetitions as desired and then switch arms.'
    ),
    (
        'Dumbbell One-Arm Standing Lateral Raise',
        'Shoulders',
        'Strength',
        'Dumbbell',
        'Steps :1.) Start by standing up straight with a dumbbell in one hand holding it at your side.2.) Slowly raise the dumbbell up and out at your side until it reaches shoulder level.3.) Hold this position for a count then return back to the start.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Dumbbell One-Arm Tricep Extension',
        'Triceps',
        'Strength',
        'Dumbbell',
        'The dumbbell standing one arm triceps extension is a single arm version of the behind the neck tricep exercise that targets and builds bigger arms.1.) Start off standing with your feet shoulder width apart, your back straight and your abs drawn in.2.) Hold a dumbbell in your right hand with your palms facing up.3.) Raise the dumbbell over your head and slowly lower the dumbbell in an arc behind your head, so that the dumbbell lines up with your spine.4.) Hold this position for a count.5.) Slowly raise the dumbbell back up to the starting position.6.) Switch arms and repeat for as many reps and sets as desired.'
    ),
    (
        'Dumbbell One-Arm Tricep Extension (Pronated)',
        'Triceps',
        'Strength',
        'Dumbbell',
        'The dumbbell single arm pronated triceps extension is an advanced exercise to isolate and target the tricep muscle.1.) Start by lying flat on a bench with your head at one end and your feet placed firmly on the floor.2.) Grab a dumbbell in one hand and raise it to a position above your chest, your palm should be facing your feet.3.) Place your free hand under the shoulder to support your other arm.4.) Slowly lower the weight moving only your forearm and elbow towards and away from your chest.5.) Repeat for as many reps and sets as desired.6.) Switch with your other arm and repeat..'
    ),
    (
        'Dumbbell One-Arm Tricep Extension (Reverse Grip)',
        'Triceps',
        'Strength',
        'Dumbbell',
        'Steps :1.) Start by placing a handle on a low cable pulley machine and placing a flat bench in front of the machine.2.) Sit down on the bench with your back facing the machine, grabbing the handle with one hand and extending it over your head, as this will be your starting position.3.) Slowly lower the weight behind your head, squeezing your tricep and holding for a count.4.) Return back to the starting position.5.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Dumbbell One-Arm Tricep Extension (Supinated)',
        'Triceps',
        'Strength',
        'Dumbbell',
        'The dumbbell single arm supinated tricep extension exercise is similar to the pronated triceps extension except the movement is over the head instead of across the chest and still targets the tricep muscles.1.) Start off lying flat in a bench with your head at one end and your feet placed firmly on the floor at the other end.2.) Grab a dumbbell in one hand and raise it to a position above your chest, your palm should be facing the floor.3.) Place your free hand under the shoulder to support your other arm.4.) Slowly bend your elbow over your head with the weight moving only your forearm and elbow.5.) Return to the starting position and repeat for as many reps and sets as desired.6.) Switch with your other arm and repeat.'
    ),
    (
        'Dumbbell One-Arm Tricep Kickback',
        'Triceps',
        'Strength',
        'Dumbbell',
        'The tricep dumbbell kickback exercise is one of the most beneficial and classic exercises for the arms and building bigger triceps.1.) Start by standing alongside a flat bench, bending your right knee and placing it upon the bench, then placing your right hand on the bench for support.2.) Grab and hold a dumbbell in your left hand while placing your left foot on the floor.3.) Bend your left arm and raise it up towards your shoulder, then with a controlled kick back motion, extend your arm fully behind you until you feel a stretch in your tricep muscle.4.) Hold this position for a count, then return back to the starting position.5.) Switch arms and repeat for as many reps and sets as desired.Tips :1.) You want to make sure that you keep your elbows in close to your body throughout the entire exercise.'
    ),
    (
        'Dumbbell One-Arm Tricep Kickback',
        'Triceps,Shoulders',
        'Strength',
        'Dumbbell',
        'Steps :1.) To begin this exercise; start off with a dumbbell in one hand, bend your knees and bring your upper body down and forward.2.) Keep the arm with the dumbbell at your waist and the other on your thigh for support. 3.) Extend the arm with the dumbbell and lift the weight up and behind your back squeezing your triceps tightly.4.) Hold the position for a few seconds then return back to the starting position.5.) Repeat this exercise for as many repetitions as needed and alternate arms.'
    ),
    (
        'Dumbbell One-Arm Upright Row',
        'Shoulders,Biceps,Triceps',
        'Strength',
        'Dumbbell',
        'The one arm upright row exercise targets your shoulders, mainly the traps and deltoids.1.) Start by standing up straight with your feet shoulder-width apart with your abs tight.2.) Grip a dumbbell in your one hand with an overhand grip and your palm facing your body.3.) Raise the dumbbell up to just in front of your shoulder. Lead with your elbow and focus on using your deltoids and traps to drive the exercise. 4.) Hold the top position, then lower the dumbbell into the starting position.5.) Do a set, then switch arms and repeat for as many reps and sets as desired.Tips : 1.) For added stability, do this exercise next to a wall or machine and hold on with your free arm.'
    ),
    (
        'Dumbbell One-Arm Wrist Curl',
        'Forearms',
        'Strength',
        'Bench',
        'Steps :1.) Start by sitting on the end of a flat bench with your feet flat on the floor and holding a dumbbell in one hand using an underhand grip.2.) Rest the arm holding the dumbbell on the same leg so the weight is extended off.3.) Slowly lower the weight down below your leg, squeeze using your forearm and hold for a count.4.) Return back to the starting position.5.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Dumbbell One-Arm Wrist Curl',
        'Forearms',
        'Strength',
        'Dumbbell',
        '1.) Start by kneeling in front of a horizontal bench with your forearms rested upon the padding and one arm holding a dumbbell.2.) Slowly lower the dumbbell down below the bench as far as possible squeezing your forearms and hold for a count.3.) Then return back to the starting position.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Dumbbell One-Arm Wrist Curl (Pronated)',
        'Forearms',
        'Strength',
        'Dumbbell',
        '1.) To begin this exercise; take one dumbbell and sit down on the edge of a flat bench and keep your feet on the floor.2.) Take the dumbbell, bring it up so that your forearm is up, rested on your knee and the palm of the hand is facing down. 3.) Curl the dumbbells up, through your wrist so that you feel a stretch in your forearm, and then lower them back down in a repeated motion.4.) Keep your arm and knee still during the exercise.5.) Repeat this exercise for as many repetitions as needed.6.) Switch arms and repeat for as many reps and sets as desired.'
    ),
    (
        'Dumbbell One-Arm Wrist Curl Over Bench (Neutral)',
        'Forearms',
        'Strength',
        'Dumbbell',
        'Steps :1.) Start by kneeling in front of a horizontal bench with your forearms rested upon the padding and holding a dumbbell in one hand with a neutral grip.2.) Slowly lower the dumbbell down below the bench as far as possible squeezing your forearms and hold for a count.3.) Then return back to the starting position.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Dumbbell One-Arm Zottman Preacher Curl',
        'Biceps,Forearms',
        'Strength',
        'Dumbbell',
        'The dumbbell one arm zottman preacher curl exercise is an advanced bicep exercise where you turn the dumbbells up and out using a preacher bench to support the triceps and isolate the biceps.Steps :1.) Start off sit at a preacher curl bench, grasping a dumbbell in your hand with your palms facing up.2.) Extend your arm fully along the bench.3.) Curl your arm up turning your wrist so it faces down as the dumbbell reaches your chest, squeezing your bicep muscle.4.) Pause for a moment and then return to the starting position and switch arms.5.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Dumbbell Plie Squat',
        'Upper Legs,Lower Legs,Glutes',
        'Strength',
        'Dumbbell',
        'The plie  squat is a version of the squat exercise that is performed with a dumbbell to strengthen the glutes and leg muscles.1.) Start by standing with your feet 2-4 inches wider than your shoulders, with your toes pointed out at a 45 degree angles.2.) Grab onto one dumbbell with both hands. Let the arms hang straight down holding one end of the dumbbell vertically. Maintain this position in the center of your body making sure that you keep your knees slightly bent and your back straight.3.) Squat down as if you were going to sit in a chair, bringing your thighs parallel to the floor.The goal is to touch one head of the dumbbell to the floor.4.) With a controlled motion return to starting position.5.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Dumbbell Posterior Fly on Stability Ball',
        'Shoulders,Back,Core',
        'Strength',
        'Dumbbell',
        'Steps :1.) Start off sitting on an exercise ball with both feet together, your chest close to your knees and arms hanging down in front with a dumbbell in each hand.2.) While maintaining a flat back, lift the weights to shoulder height allowing the arms to bend slightly and hold for a count.3.) Return back to the starting position and repeat for as many reps and sets desired.'
    ),
    (
        'Dumbbell Preacher Curl',
        'Biceps,Forearms',
        'Strength',
        'Dumbbell Machine - Strength',
        'The dumbbell preacher curl exercise is a version of the preacher curl that uses dumbbells and a special bench to isolate the biceps build and strengthen the arms.Steps :1.) Start off by adjust the seat of the bench so your arms are level with the top of the bench.2.) Grab a dumbbell in each hand with an underhand (palms facing up) grip.3.) Picking up the dumbbells, rest your arms against the bench and extend them fully towards the floor.4.) Keeping your arms on the bench at all times, curl the weight up towards your head, squeezing and isolating your biceps.5.) Pause for a moment and then lower the weights back to starting position.6.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Dumbbell Preacher Curl (Stability Ball)',
        'Biceps',
        'Strength',
        'Dumbbell',
        'Steps :1.) Start by laying in a prone position over an exercise ball with your chest rested firmly on top of the ball and each hand gripping a dumbbell in front of you.2.) Slowly lift the dumbbells up to your chest, isolating the bicep, until you feel a tension and hold this position for a count.3.) Return back to the starting position and repeat for as many reps and sets as desired.'
    ),
    (
        'Dumbbell Preacher Hammer Curl',
        'Biceps,Forearms',
        'Strength',
        'Dumbbell',
        'The dumbbell preacher hammer curl exercise combines a hammer curl with a preacher bench to isolate the bicep muscle and build bigger arms.1.) Start off by adjust the seat of the bench so your arms are level with the top of the bench.2.) Grab a dumbbell in each hand with your palms facing each other, shoulder-width distance apart and extend your arms fully along the bench.3.) Keeping your arms and elbows on the bench at all times, curl the dumbbells up towards your head, squeezing and isolating the bicep.4.) Hold for a count and then lower the bar back to starting position.5.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Dumbbell Press (Close Grip)',
        'Triceps,Chest,Shoulders',
        'Strength',
        'Dumbbell',
        'Steps :1.) Start by laying with back on a flat bench, feet in front of you and holding a dumbbell in each hand elevated above your chest.2.) Slowly lower the dumbbells to your chest, keeping them close together, without touching and hold for a count.3.) Return back to the starting position.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Dumbbell Press (Stability Ball)',
        'Chest,Core',
        'Strength',
        'Dumbbell',
        '1.) Start by sitting on an exercise ball with a dumbbell in each hand.2.) Slowly roll down making sure that your head and shoulders are on the ball and your feet are planted firmly on the floor in front of you.3.) Begin with the weights on your chest and slowly push them up towards the ceiling during your exhale and then inhaling when returning the weights back to the starting position.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Dumbbell Pronation (Side-Lying)',
        'Forearms',
        'Strength',
        'Dumbbell',
        'Steps :1.) To begin this exercise; lie sideways on a flat bench with one arm holding a dumbbell.2.) Then take the upper arm that is holding the dumbbell and rotate the forearm so that it is lifted forward and up.3.) Repeat this exercise for as many repetitions as needed.'
    ),
    (
        'Dumbbell Prone Deltoid Raise',
        'Shoulders,Back',
        'Strength',
        'Dumbbell',
        '1.) To begin this exercise; start off lying face down on a flat bench with a dumbbell in each hand rested on the floor in front of you.2.) Then raise your arms with your shoulders so that they are parallel with your shoulders and hold onto this position for a few seconds.3.) Return back to the starting position.4.) Repeat this exercise for as many repetitions as needed'
    ),
    (
        'Dumbbell Prone Incline Shrug',
        'Back',
        'Strength',
        'Dumbbell',
        '1.) To begin this exercise; start off lying on your stomach on an incline bench holding a dumbbell in each hand with your hands reaching towards the floor.2.) Pull up using your shoulders lifting the dumbbells off the floor and squeeze your back tightly for a few seconds before returning back to the starting position.3.) Repeat this exercise for as many repetitions as needed.'
    ),
    (
        'Dumbbell Pullover',
        'Chest,Triceps,Shoulders',
        'Strength',
        'Dumbbell',
        '1.) To begin this exercise; start off by placing a dumbbell standing up on a flat bench.2.) With the dumbbell standing up, lye your shoulders flat down upon the surface of the bench with your hips below and your legs bent so that your feet are firmly upon the floor.3.) Take the dumbbell with both hands and lift it straight up over your chest as the palms rest on the underside of one of the sides of the dumbbell.4.) Lower the weight down in an arc behind your head, stretching out your chest and hold for a few seconds.5.) Return the dumbbell back to the starting position.6.) Repeat this exercise for as many repetitions as needed.Tips : 1.) Use a spotter if need be with heavier weights as there might be a struggle to return back up to the standing position.'
    ),
    (
        'Dumbbell Pullover',
        'Chest,Triceps,Shoulders',
        'Strength',
        'Dumbbell',
        '1.) To begin this exercise; start off by placing a dumbbell standing up on a flat bench.2.) With the dumbbell standing up, lie your shoulders flat down upon the surface of the bench with your hips below and your legs bent so that your feet are firmly upon the floor.3.) Take the dumbbell with one hand and lift it straight up over your chest as the palms rest on the underside of one of the sides of the dumbbell.4.) Lower the weight down in an arc behind your head, stretching out your chest and hold for a few seconds.5.) Return the dumbbell back to the starting position.6.) Repeat this exercise for as many repetitions as needed.Tips : 1.) Use a spotter if need be with heavier weights as there might be a struggle to return back up to the standing position.'
    ),
    (
        'Dumbbell Pullover (Stability Ball)',
        'Chest,Glutes,Back',
        'Strength',
        'Dumbbell',
        'Steps :1.) Start by sitting on an exercise ball with a dumbbell in each hand.2.) Slowly roll down making sure that your head and shoulders are on the ball and your feet are planted firmly on the floor in front of you.3.) Extend the dumbbells behind your head pointed out right in front of you, then elevate them straight up with your shoulders.4.) Hold this position for a few seconds then return back to the starting position.5.) Repeat for as many reps and sets as possible.'
    ),
    (
        'Dumbbell Pullover on Stability Ball',
        'Chest,Back,Shoulders',
        'Strength',
        'Dumbbell',
        'Steps :1.) Start by laying on your back on an exercise ball with the middle of your back placed on the top of the ball.2.) Hold a dumbbell in both hands raised high above your chest and slowly extend the weight behind your head slightly bending your elbows until your arms create a straight line with your body and you feel a stretch in your chest.3.) Return back up slowly to the starting position and repeat for as many reps and sets as desired.'
    ),
    (
        'Dumbbell Pullover on Stability Ball',
        'Back,Glutes,Chest',
        'Strength',
        'Dumbbell',
        'Steps :1.) Start by sitting on an exercise ball with a dumbbell in each hand.2.) Slowly roll down making sure that your head and shoulders are on the ball and your feet are planted firmly on the floor in front of you.3.) Extend the dumbbells behind your head pointed out right in front of you, then elevated them straight up with your shoulders.4.) Hold this position for a few seconds then return back to the starting position.5.) Repeat for as many reps and sets as possible.'
    ),
    (
        'Dumbbell Rear Delt Row',
        'Back',
        'Strength',
        'Dumbbell',
        'Steps :1.) Start by lying on a flat bench with a dumbbell in each hand extended out in front of you.2.) Slowly pull the dumbbells up until your elbows are just above your shoulders.3.) Once you reach the final position hold for a count and squeeze your muscles.4.) Return back to the starting position and repeat for as many reps and sets as desired.'
    ),
    (
        'Dumbbell Rear Deltoid Row',
        'Shoulders,Biceps,Back',
        'Strength',
        'Dumbbell',
        'The rear deltoid row exercise is a simple and effective exercise that is used to target your lats and rear deltoids.1.) Start by placing your right foot on the floor with your left knee resting upon a bench, keeping your body weight supported by your left arm.2.) While keeping your back flat, pick up a dumbbell in your right hand3.) Begin by leading up with your elbow, bringing your arm up close to your chest and squeezing with your back muscles.4.) Once you reach the top of the exercise stop and hold for a count then return back to the starting position.5.) Switch sides and repeat.'
    ),
    (
        'Dumbbell Rear Row (Stability Ball)',
        'Back,Glutes,Shoulders',
        'Strength',
        'Dumbbell',
        'Steps :1.) Start by laying prone with your hips on an exercise ball with each hand gripping a dumbbell and arms at the sides of the ball.2.) Once in position, pull the weights upwards, keeping your elbows wide, and retract your shoulders to reach their peak until you feel a stretch.3.) Slowly return back to the starting position and repeat for as many reps and sets desired.'
    ),
    (
        'Dumbbell Reverse Bicep Curl',
        'Biceps,Forearms',
        'Strength',
        'Dumbbell',
        'This is a reverse curl exercise that works all of the muscles of the arms.1.) Stand with your feet shoulder width apart, your knees slightly bent and a your abs drawn in.2.) Grasp a dumbbell in each hand with an overhand (palms facing down) grip.3.) Keeping your arms at your side and your elbows steady. Lift the dumbbells up towards your shoulders.4.) Pause for a moment and then return to the starting position.'
    ),
    (
        'Dumbbell Reverse Concentration Curl',
        'Forearms,Biceps',
        'Strength',
        'Dumbbell',
        'Steps :1.) Begin by sitting on the end of a flat bench with your feet flat on the floor and holding a dumbbell in one hand using an underhand grip.2.) Rest the arm holding the dumbbell on the inside of the same leg so the weight is extended off and turn it inward towards the opposite leg.3.) Slowly lower the weight down below your leg, squeeze using your forearm and hold for a count.4.) Return back to the starting position.5.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Dumbbell Reverse Fly',
        'Shoulders,Back',
        'Strength',
        'Dumbbell',
        '1.) To begin this exercise; start off lying face down on an incline bench with a dumbbell in each hand rested on the floor in front of you.2.) Then raise your arms so that they are parallel with your shoulders and hold onto this position for a few seconds. 3.) Make sure that you are squeezing both your shoulders and back throughout the motion.4.) Return back to the starting position.5.) Repeat this exercise for as many repetitions as needed'
    ),
    (
        'Dumbbell Reverse Fly (Prone)',
        'Shoulders',
        'Strength',
        'Dumbbell',
        'Steps :1.) Start by setting up a flat bench with your chest rested upon the bench, feet extended behind you, holding a dumbbell in each hand, and arms rested down towards the floor.2.) Slowly, using your shoulders, raise your arms up towards the ceiling, squeezing on the way up and hold for a count.3.) Return back to the starting position.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Dumbbell Reverse Fly with External Rotation',
        'Shoulders,Back',
        'Strength',
        'Dumbbell',
        '1.) To begin this exercise; start off lying face down on an incline bench with a dumbbell in each hand rested on the floor in front of you but with palms facing down towards the ground.2.) Then raise your arms so that they are parallel with your shoulders and extend out as in a regular flye. 3.) Hold onto this position for a few seconds.4.) Return back to the starting position.5.) Repeat this exercise for as many repetitions as needed'
    ),
    (
        'Dumbbell Reverse Lunge',
        'Upper Legs,Glutes,Lower Legs',
        'Strength',
        'Dumbbell',
        '1.) To begin this exercise; stand upright holding dumbbells in both hands, keeping your hands by your sides.2.) With both dumbbells in your hands, take a step backward with your right leg and lower your upper body down, maintaining your balance on the descent. 3.) Do not let your right knee touch the ground as you lower yourself and hold for a few seconds.4.) Then push back up on your left leg and return back to the starting position and repeat with the opposite leg5.) Repeat this exercise for as many repetitions as needed'
    ),
    (
        'Dumbbell Reverse Preacher Curl',
        'Forearms,Biceps',
        'Strength',
        'Machine - Strength',
        'Steps :1.) Start oby sitting on a preacher bench with your upper arms resting upon the padding and holding a dumbbell in each hand with a reverse grip.2.) Slowly raise the dumbbells up towards your shoulders, squeezing in your forearms and hold for a count.3.) Return back to the starting position.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Dumbbell Reverse Spider Curl',
        'Biceps,Shoulders,Forearms',
        'Strength',
        'Dumbbell',
        '1.) Start by holding a dumbbell in each hand, holding it with a reverse grip so that your palms are facing inward and position yourself lying face first on an inclined bench.2.) Then extend your biceps down and out in front of you so that you are able to fully contract your muscles3.) Contract your biceps and curl the weights up towards your shoulders, squeezing your muscles in the process and isolating the biceps4.) Hold for a count when you reach the top position then return back to the starting position.5.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Dumbbell Reverse Wrist Curl',
        'Forearms',
        'Strength',
        'Dumbbell',
        'Steps :1.) Start by sitting on the end of a flat bench with your feet flat on the floor, holding a dumbbell in each hand using a reverse grip.2.) Rest your arms on your legs so the weights are extended off.3.) Slowly lower the weights down below your legs as this will be your starting position.4.) Using only your wrist, curl the dumbbell up until you feel a stretch in your forearm muscles.4.) Hold this position for a count and then return back to the starting position.5.) Repeat for as many reps and sets as desired.Notes :1.) It is important to isolate the forearm muscles during this exercise.2.) Do not move your arms or legs while you perform the workout.3.) Use a weight that you are able to manage so you do not injure your wrists or perform the exercise incorrectly.'
    ),
    (
        'Dumbbell Reverse Wrist Curl',
        'Forearms',
        'Strength',
        'Bench',
        'Steps :1.) Start by kneeling in front of a horizontal bench with your forearms rested upon the padding and holding a dumbbell in both hands with a reverse grip.2.) Slowly lower the dumbbells down below the bench as far as possible squeezing your forearms and hold for a count.3.) Then return back to the starting position.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Dumbbell Rotational Bench Press',
        'Triceps,Chest,Shoulders',
        'Strength',
        'Dumbbell',
        'Steps :1.) Start by laying down on a flat bench with a dumbbell rested in each hand in the starting position of a dumbbell chest press with the dumbbells rested at around shoulder level2.) Slowly elevate the dumbbells up and above your chest, rotating in during the process, squeezing your triceps and hold for a count when the weights are above chest level.3.) Hold for a count then return back to the starting position.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Dumbbell Rotational Curl',
        'Biceps,Forearms',
        'Strength',
        'Dumbbell',
        'Steps :1.) Begin by standing up straight with a dumbbell in each hand and your feet flat on the floor.2.) Slowly curl on of the dumbbells up towards your shoulders. 3.) While curling it up, rotate the dumbbell from a neutral position to an underhand position and hold for a count.4.) Return back to the starting position and repeat with the opposite arm.5.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Dumbbell Rotational Decline Sit-Up',
        'Core',
        'Strength',
        'Dumbbell',
        'Steps :1.) Start by laying with your back flat on a decline bench holding two light dumbbells in your hands rested above your chest and placing your feet underneath the resting pads.2.) Slowly pull your body up along with the weights and bring your right arm forward and across to your left knee until you feel a stretch in your abs.3.) Hold this position for a count then return to the starting position.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Dumbbell Rotational Row',
        'Back',
        'Strength',
        'Dumbbell',
        'Steps :1.) Start by standing up straight with your feet shoulder width apart and a dumbbell in each hand holding with an overhand grip.2.) Slowly and slightly lower your back towards the ground so you feel tension in your lower back and then slowly elevate the dumbbells up towards your chest.3.) Squeeze your back in the process while turning your wrists so that they are in an upright position, hold for a count then return back to the starting position.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Dumbbell Seated Alternating Arnold Press',
        'Shoulders,Triceps',
        'Strength',
        'Dumbbell',
        'Steps :1.) Begin seated on the end of a flat bench with feet on the floor in front of you holding a dumbbell in each hand.2.) Slowly, while using your thighs, raise the dumbbells to shoulder level and twist your palms so that they are facing in towards your body.3.) From there raise one dumbbell above your head, while keeping the other one still, squeezing in your shoulder, and hold for a count.4.) Return back to the starting position and repeat with the opposite hand.5.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Dumbbell Seated Alternating Front Raise',
        'Shoulders,Triceps',
        'Strength',
        'Dumbbell',
        'Steps :1.) Start by sitting up straight at the end of a flat bench with your feet shoulder width apart, holding a dumbbell in each hand with an overhand grip at your sides.2.) Slowly elevate one arm up towards the ceiling, squeezing your shoulder and hold for a count.3.) Return back to the starting position and repeat with the opposite arm.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Dumbbell Seated Alternating Hammer Curl',
        'Biceps',
        'Strength',
        'Dumbbell',
        'Steps :1.) Start off setting up an flat bench and then sit down on the bench, with a dumbbell in each hand and feet flat on the floor.2.) Hold the dumbbells in an neutral grip with your palms facing inward, then slowly lift one dumbbell up towards your shoulder, isolating the bicep and hold for a count.3.) Return back to the starting position and repeat with the opposite arm.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Dumbbell Seated Alternating Reverse Fly',
        'Shoulders',
        'Strength',
        'Dumbbell',
        'Steps :1.) Start by sitting on the end of a flat bench with your feet together on the floor in front of you and a dumbbell in each hand.2.)Lower your body so your chest is rested upon your thighs and position the dumbbells underneath your legs.3.) Slowly elevate one of the dumbbells up and out to around head level and squeeze your shoulders.4.) Hold for a count then return back to the starting position then repeat with the opposite arm.5.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Dumbbell Seated Alternating Shoulder Press',
        'Shoulders,Triceps',
        'Strength',
        'Dumbbell',
        'Steps :1.) Start by sitting on either a flat or elevated bench with your feet in front of you, holding a dumbbell in each hand keeping them rested at shoulder level next to your head.2.) Slowly elevate one hand up towards the ceiling, keeping the other at the side of your head, and squeeze your shoulder.3.) Hold for a count then return back to the starting position and repeat with the opposite arm.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Dumbbell Seated Arnold Press',
        'Shoulders,Triceps',
        'Strength',
        'Dumbbell',
        'The Dumbbell Arnold Press is a variation of the military press that also targets the rotator cuff muscle and also targeting the front and side deltoids.1.) Start by sitting on a flat bench with your feet pointed forward and keeping your abs tight. 2.) Once in position, grab a dumbbell in each hand using an underhand grip with elbows bent and palms facing in slightly below shoulder level.3.) With a controlled motion, raise the dumbbells up while rotating your shoulders turning the dumbbells so that your palms are facing in towards you.4.) Hold this position for a count then return back to the starting position using a controlled motion.Tips :1.) If you are experiencing any shoulder pain, avoid performing the dumbbell arnold press exercise.2.) Beginners to this exercise should try performing this workout with a lesser weight to master the correct form.'
    ),
    (
        'Dumbbell Seated Bent-Over One-Arm Reverse Fly',
        'Shoulders',
        'Strength',
        'Dumbbell',
        '1.) Start by sitting at the end of a flat bench holding a dumbbell in one hand at your side.2.) Bend your body down so that your back is parallel to the floor.3.) Slowly extend the dumbbell out and to the side until the weight reaches shoulder level and hold for a count.4.) Return back to the starting position and repeat for as many reps and sets as desired.'
    ),
    (
        'Dumbbell Seated Bent-Over One-Arm Tricep Extension',
        'Triceps',
        'Strength',
        'Dumbbell',
        'The seated bent-over dumbbell triceps extension exercise uses a kickback movement to work the tricep muscle in each arm individually.Steps :1.) Start by sitting on the edge of a bench with your feet rested flat on the floor in front of you and holding a dumbbell in your right hand.2.) Slowly bring bring your right arm up to your side so that your dumbbell is almost parallel with your chest, making sure that you keep your lower arm vertical and pressing your arm back in an arc.3.) Hold this position for a count, return back to the starting position, switch arms and repeat.'
    ),
    (
        'Dumbbell Seated Bent-Over Reverse Fly',
        'Shoulders',
        'Strength',
        'Dumbbell',
        'Steps :1.) Start by sitting on the end of a flat bench with your feet together on the floor in front of you and a dumbbell in each hand.2.) Bend down so that your chest is rested upon your thighs and position the dumbbells underneath your legs.3.) Slowly elevate the dumbbells up and out to around head level and squeeze your shoulders.4.) Hold for a count then return back to the starting position.5.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Dumbbell Seated Bent-Over Tricep Extension',
        'Triceps',
        'Strength',
        'Dumbbell',
        '1.) To begin this exercise; start off sitting down at the end of a flat bench.2.) With your knees bent, move your upper chest forward so that they are closer to your knees.3.) Take the dumbbells and place them at the sides next to your knees, then use your triceps to extend and lift the dumbbells up behind your back. 4.) Once the dumbbells are in the final position, hold and squeeze the triceps for a few seconds, then return back to the starting position.5.) Repeat this exercise for as many repetitions as needed.'
    ),
    (
        'Dumbbell Seated Bicep Curl',
        'Biceps,Forearms',
        'Strength',
        'Dumbbell',
        'The dumbbell seated bicep curl exercise uses dumbbells and a seated position to isolate the bicep muscles.1.) Start by sitting on bench with your feet firmly on the floor and your back straight.2.) Grasp a dumbbell in each hand with your palms facing each other.3.) Lower the dumbbells to your sides and slowly curl your arms up so your palms are facing up.4.) Squeeze your biceps at the top and slowly lower to the starting position.5.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Dumbbell Seated Calf Raise',
        'Lower Legs',
        'Strength',
        'Dumbbell',
        'Steps :1.) Start by sitting down on the end of a flat bench with a block or step positioned right in front of you, and hold a dumbbell on both of your legs.2.) Dip your heels down towards the floor as far as possible as this will be your starting position.3.) Keeping the dumbbells firmly pressed up against your knees, slowly raise your heels up off of the floor as far as possible squeezing your calves and hold for a count.4.) Return back to the starting position.5.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Dumbbell Seated Curl',
        'Biceps',
        'Strength',
        'Dumbbell',
        'The seated dumbbell curl is a seated biceps curl exercise using the dumbbells.Steps :1.) Start by sitting on a bench with your feet planted on the floor in front of you and keeping your back straight.2.) Grab onto a dumbbell in each hand with your palms facing inward, then lower the dumbbells down to your sides and slowly curl them up, isolating the biceps.3.) Once you reach the top position, squeeze your biceps, hold for a count then return back to the starting position.'
    ),
    (
        'Dumbbell Seated Dublin Press',
        'Shoulders,Triceps',
        'Strength',
        'Dumbbell',
        'Steps :1.) Start by sitting up straight at the end of a flat bench, holding a dumbbell in each arm at shoulder level next to your head.2.) Slowly extend your arms overhead, squeezing your shoulder and immediately return back to the starting position.3.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Dumbbell Seated Front Raise',
        'Shoulders',
        'Strength',
        'Dumbbell',
        'Steps :1.) Start by sitting up straight at the end of a flat bench with your feet shoulder width apart, holding a dumbbell in each hand with an overhand grip at your sides.2.) Slowly elevate both of your arms up towards the ceiling, squeezing your shoulder and hold for a count.3.) Return back to the starting position.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Dumbbell Seated Hammer Curl',
        'Biceps,Forearms',
        'Strength',
        'Dumbbell',
        '1.) Start by setting up a flat bench and then sit down on the bench, with a dumbbell in each hand and feet flat on the floor.2.) Hold the dumbbells in a neutral grip with your palms facing inward. 3.) Slowly lift the dumbbells up towards your shoulder, isolating the bicep and hold for a count.4.) Return back to the starting position.5.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Dumbbell Seated One-Arm Arnold Press',
        'Shoulders',
        'Strength',
        'Dumbbell',
        'Steps :1.) Start by seated on the end of a flat bench with feet on the floor in front of you holding a dumbbell in one hand.2.) Slowly, while using your thighs, raise the dumbbell to shoulder height and twist your palm so that it is facing in towards your body.3.) From there raise the dumbbell above your head, squeezing your shoulder, and hold for a count.4.) Return back to the starting position.5.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Dumbbell Seated One-Arm Front Raise',
        'Shoulders',
        'Strength',
        'Dumbbell',
        '1.) Start by sitting up straight at the end of a flat bench with your feet shoulder width apart, holding a dumbbell in one hand with an overhand grip at your side.2.) Slowly elevate your arm up towards the ceiling, squeezing your shoulder and hold for a count.3.) Return back to the starting position.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Dumbbell Seated One-Arm Lateral Raise',
        'Shoulders',
        'Strength',
        'Dumbbell',
        'Steps :1.) Start by sitting down at the end of a flat bench with your feet shoulder width apart and holding a dumbbell in one hand.2.) While keeping your body still, slowly raise the dumbbell out to the side up to shoulder level, squeezing on the way up and hold for a count.3.) Then return back to the starting position.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Dumbbell Seated One-Arm Shoulder Press',
        'Shoulders',
        'Strength',
        'Dumbbell',
        'Steps :1.) Start by sitting at the end of a bench straight up, gripping a dumbbell in one hand and keeping it parallel to your head.2.) Slowly press the weight upward until the elbow is next to your ear and hold for a count.3.) Return back to the starting position and repeat for as many reps and sets as desired.'
    ),
    (
        'Dumbbell Seated One-Arm Supported Tricep Extension',
        'Triceps',
        'Strength',
        'Dumbbell',
        'Steps :1.) Start by laying flat with your back on a bench holding a dumbbell in one hand at arms length, above your head, and the inside of your hand facing towards your face with a supinated grip.2.) Take your opposite hand and place it underneath your elbow for support, then slowly lower the dumbbell down towards your face.3.) Hold this position for a count then slowly lift the dumbbell back upward squeezing your triceps.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Dumbbell Seated One-Arm Tricep Extension',
        'Triceps',
        'Strength',
        'Dumbbell',
        'The dumbbell one arm tricep extension exercise uses a dumbbell to work each arm individually and build bigger triceps.1.) Start by sitting on a bench with your back straight and your abs drawn in.2.) Grab a dumbbell in your hand and place it behind your neck with your elbow bent.3.) Slowly extend your arm straight up over your head and slowly return to the starting position.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Dumbbell Seated One-Arm Wrist Curl',
        'Forearms',
        'Strength',
        'Dumbbell',
        'Steps :1.) Start by sitting on the end of a flat bench with your feet flat on the floor and holding a dumbbell in one hand using a neutral grip.2.) Rest the arm holding the dumbbell on the same leg so the weight is extended off.3.) Slowly lower the weight down below your leg, squeeze using your forearm and hold for a count.4.) Return back to the starting position.5.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Dumbbell Seated Press (Palms In)',
        'Shoulders,Triceps',
        'Strength',
        'Dumbbell',
        'Steps :1.) Start by sitting at the end of a flat bench with your feet on the floor in front of you, holding a dumbbell in each arm at shoulder level, palms facing in, next to your head.2.) Slowly elevate your arms up and above your head, squeezing your shoulder and hold for a count.3.) Return back to the starting position.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Dumbbell Seated Shoulder Press',
        'Shoulders,Triceps',
        'Strength',
        'Dumbbell',
        'The dumbbell shoulder press is a variation of the standard military press that puts more focus on the trap muscles and deltoid muscles.Steps :1.) Start off holding a dumbbell in each hand, with your palms facing forward and your hands at shoulder height, and sitting on a bench keeping your abs tight.2.) Slowly extend your arms and raise the dumbbells up until your arms are straight and each dumbbell is above your head.3.) Continue until you reach the top position and you feel a squeeze in your shoulder muscles and hold for a count.4.) Return back to the starting position and repeat for as many reps and sets as desired.6.) Continue until your hands are once again at about shoulder level.Tips :1.) Do not lock your elbows in the top position of this exercise. 2.) By locking your elbows you are prone to very serious injuries.3.) You are also able to perform a variation of this exercise on an exercise ball.'
    ),
    (
        'Dumbbell Seated Side Bend',
        'Core',
        'Strength',
        'Dumbbell',
        'Steps :1.) Start by sitting up straight on a bench with a dumbbell in each hand and arms at your sides.2.) While keeping your back straight and facing forward, slowly bend down to one side until you feel a stretch in your abs then return back to the starting position.3.) Continue on to the opposite side and repeat.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Dumbbell Seated Side Lateral Raise',
        'Shoulders',
        'Strength',
        'Dumbbell',
        '1.) With a dumbbell in each hand sit on a workout bench and keep your feet on the ground.2.) Have your arms at your side and hold the dumbbells with palms facing inward. 3.) Lift each dumbbell straight out as if you are going to fly.4.) Slowly bring back down to your sides while inhaling.5.) Repeat for the desired amount of reps.'
    ),
    (
        'Dumbbell Seated Single-Leg Calf Raise',
        'Lower Legs',
        'Strength',
        'Dumbbell',
        'The seated single-leg calf raise exercise is a version of the calf raise that targets each leg individually and helps strengthen the calf muscles.1.) Start by placing a block on the floor about one foot in front of a bench.2.) Sit on the bench with a dumbbell resting in a vertical position on top of the knee. Keep the ball of one foot on the block.3.) Slowly raise and lower your heel up as high as possible without lifting your foot off the block, feeling a stretch in your calf muscles.4.) Switch feet and repeat for as many reps and sets as desired.'
    ),
    (
        'Dumbbell Seated Tricep Press',
        'Triceps',
        'Strength',
        'Dumbbell',
        'The seated triceps press exercise uses a single dumbbell held in between both hands to work the tricep muscle and build bigger arms.Steps :1.) Start off by sitting on a short straight bench with your feet planted firmly on the floor, keeping your abs drawn in and grabbing a dumbbell with both hands with a palms up grip above your head.2.) Slowly lower the dumbbell in an arc motion from above your head to behind your neck, feeling a stretch in your tricep muscle.3.) Hold this position for a count and return back to the starting position.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Dumbbell Seated Wrist Curl',
        'Forearms',
        'Strength',
        'Dumbbell',
        '1.) Start by sitting on a flat bench holding a dumbbell in each hand.2.) Lift the dumbbells up and place your forearms on your knees with palms facing up and the weights extended over your knees.3.) Once in position slowly curly your wrist upwards until you feel a tension in your forearm muscles.4.) Hold this position for a count then return back to the starting position.5.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Dumbbell Seated Wrist Curl (Neutral Grip)',
        'Forearms',
        'Strength',
        'Dumbbell',
        'Steps :1.) Start off sitting on the end of a flat bench with your feet flat on the floor and holding a dumbbell in both hands using a neutral (hammer) grip.2.) Rest your arms on your legs so the weights are extended off of your knees.3.) Lower the weights down below your knees as this will be your starting position. 4.) Slowly raise the dumbbells up, only using your wrists and squeeze until you feel a stretch in your forearm muscle.5.) Hold for a count and then return back to the starting position.4.) Return back to the starting position.5.) Repeat for as many reps and sets as desired.Notes :1.) Make sure that you are isolating the forearm muscle2.) Refrain from moving your arms or legs while performing this exercise'
    ),
    (
        'Dumbbell Seated Wrist Curl (Palms Down)',
        'Forearms',
        'Strength',
        'Dumbbell',
        '1.) Start out by placing two dumbbells on the floor in front of a flat bench.2.) Sit down on the bench with your legs shoulder width apart.3.) Grab the dumbbells and bring it up so that your forearms are resting on your thighs with palms facing downward. 4.) The weights should be hanging over your knees as this will be your starting position.5.) Slowly curl your wrist upwards while exhaling until you feel a stretch in your forearm muscles.5.) Hold for a count and then slowly lower your wrist back down to the starting position while inhaling. 6.) Repeat for the desired amount of reps and sets.Tips :1.) Refrain from moving your forearms during this exercise.2.) Make sure that you are only feeling a stretch in the forearm muscles.3.) It is important to isolate the muscle during this exercise'
    ),
    (
        'Dumbbell See Saw Press',
        'Shoulders,Triceps,Core',
        'Strength',
        'Dumbbell',
        '1.) To begin this exercise; start off by grabbing a dumbbell in each hand and clean lift them so that your palms are facing in at chest level.2.) Then take your left arm and extend it overhead, while it is being extended rotate your wrist so that the palms are facing inward, and bend your torso to the opposite direction.3.) Repeat the exercise with the opposite hand and then return back to the starting position.4.) Repeat this exercise for as many repetitions as needed.'
    ),
    (
        'Dumbbell Shoulder Abduction',
        'Shoulders',
        'Strength',
        'Dumbbell',
        'Steps :1.) Start by standing up straight with your feet shoulder width apart and your arms at your sides, holding a dumbbell in each hand.2.) Keep your palms facing inward, slowly lift the weights outward until they are at shoulder level and hold for a count, feeling a stretch in your muscles.3.) Return back to the starting position.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Dumbbell Shoulder Press',
        'Shoulders,Triceps',
        'Strength',
        'Dumbbell',
        'Steps :1.) Start off standing up straight with your feet shoulder width apart and your arms rested at your sides, holding dumbbells in each hand.2.) Raise the dumbbells to head level so that your arms are creating a 90 degree angle.3.) Slowly push the dumbbells up, by extending through the elbows, over your head, feeling a stretch in your shoulders.4.) Hold for a count then return back to the starting position.5.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Dumbbell Shoulder Press (Reverse Grip)',
        'Shoulders',
        'Strength',
        'Dumbbell',
        'Steps :1.) Start off sitting up straight on a bench, with your feet together flat on the floor, gripping dumbbells in each hand at shoulder height.2.) Then press the weights upward with your wrists rotating outward until you feel a stretch in your shoulders, and hold this position for a count.3.) Return back to the starting position and repeat for as many reps and sets as desired.'
    ),
    (
        'Dumbbell Shoulder Press (Stability Ball)',
        'Shoulders,Core,Back',
        'Strength',
        'Dumbbell',
        'Steps :1.) Start off by sitting on top of an exercise ball with your feet planted firmly on the floor in front of you, arms bent by your head at 90-degrees and dumbbells in each hand.2.) Raise the dumbbells slightly in front of your head and elevate them over your head completely until they are touching at the ends.3.) Keep your arms straight at the top and hold motion for a count then return back to the starting position.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Dumbbell Shoulder Press on Stability Ball',
        'Shoulders',
        'Strength',
        'Dumbbell',
        'Steps :1.) Start by sitting at the end of a bench straight up, gripping a dumbbell in each hand and keeping your arms parallel to your head.2.) Slowly press the weights upward until the elbow is next to your ear and hold for a count.3.) Return back to the starting position and repeat for as many reps and sets as desired.'
    ),
    (
        'Dumbbell Shoulder Raise',
        'Shoulders,Forearms',
        'Strength',
        'Dumbbell',
        'Steps :1.) Start by standing up straight with your feet shoulder-width apart and your arms straight and in front of the body. Rest the dumbbells on the front thighs.2.) Slowly raise your arms up until they are parallel with the floor. You will feel a stretch in the front of the shoulders. Maintain a tight core throughout the movement.3.) Hold for a count then return back to the starting position.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Dumbbell Shoulder Raise (Stability Ball)',
        'Shoulders,Core,Back',
        'Strength',
        'Dumbbell',
        'Steps :1.) Start off by sitting on top of an exercise ball with your feet planted firmly on the floor in front of you, arms bent by your head at 90-degrees and dumbbells in each hand.2.) Raise the dumbbells slightly in front of your head and elevate them over your head completely until they are touching at the ends.3.) Keep your arms straight at the top and hold motion for a count then return back to the starting position.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Dumbbell Shoulder Raise (Stability Ball)',
        'Shoulders,Core,Back',
        'Strength',
        'Dumbbell',
        '1.) Begin a prone position on an exercise ball with your abs and hips on the ball, legs spread out behind you and feet against a wall while each hand holds a dumbbell.2.) When balanced and in position, perform a rear delt raise pressing the weights out as far as you can and hold for a count.3.) Return back to the starting position and repeat for as many reps and sets as desired.'
    ),
    (
        'Dumbbell Shoulder Shrug',
        'Back,Shoulders,',
        'Strength',
        'Dumbbell',
        'The dumbbell shoulder shrug exercise is a great workout used to target the upper trapezius by using a pair of dumbbells.Steps :1.) Start by standing up straight with your feet shoulder-width apart, bending your knees slightly.2.) Hold a dumbbell in each hand with your palms facing in towards your body, and lower your shoulders down as much as possible.3.) While keeping your arms straight, slowly raise them up towards your ears.4.) Once you reach the top position, hold for a count then slowly lower the dumbbells back to their original position.Tips :1.) Do not use a jerking motion and refrain from swinging the dumbbells in this exercise.2.) Do not roll your shoulders in the exercise as that is improper form and can result in injury.3.) Perform this exercise slowly and concentrate on the muscle, you will see better results.'
    ),
    (
        'Dumbbell Shrug (Stability Ball)',
        'Back,Shoulders,Forearms',
        'Strength',
        'Dumbbell',
        'Steps :1.) Start by sitting on an exercise ball straight up, feet flat on the floor in front of you, dumbbells in each hand and arms your sides.2.) Slowly arch your shoulders back and lift the weights up until you are at your peak in your shoulders and feel a stretch.3.) Hold for a count then return back to the starting position.Repeat for as many reps and sets as desired.'
    ),
    (
        'Dumbbell Side Bend',
        'Core',
        'Strength',
        'Dumbbell',
        'The side bend exercise works the oblique abdominal muscles1.) Start by standing up straight with your feet shoulder width apart, knees slightly bent and abs drawn in.2.) Grab a dumbbell in one hand and standing straight upright, bend at the waist as far as possible to one side.3.) Slowly return back up to the starting position.4.) Switch the dumbbell to your other hand and repeat the exercise.5.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Dumbbell Side Bend',
        'Core',
        'Strength',
        'Dumbbell',
        'The dumbbell side bend exercise works the oblique muscles (which are the muscles on the sides of your abs.)1.) Start by standing with your feet shoulder-width apart with your knees slightly bent and abs drawn in.2.) Grab a dumbbell in one hand, stand up straight and then bend at the waist to one side of your body as far as possible.3.) Hold onto the position for a count, squeezing your abdominal muscles and the return back to the starting position.4.) Switch to the other side and repeat for as many reps and sets as desired.Tips :1.) Be careful to bend only at your waist and not at the hips or knees.'
    ),
    (
        'Dumbbell Single-Leg Bench Squat',
        'Upper Legs,Glutes,Lower Legs',
        'Strength',
        'Dumbbell',
        'Steps :1.) Start by setting up a flat bench vertically right next to a smith machine rack machine.2.) Hold onto the barbell with one hand and with the other holding a dumbbell.3.) Lift your leg on the side of the dumbbell up, out and keeping it straight then slowly lower your body down towards the floor until your bending thigh is parallel towards the floor.4.) Hold for a count then return back to the starting position.5.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Dumbbell Single-Leg Calf Raise',
        'Lower Legs',
        'Strength',
        'Dumbbell',
        'Steps :1.) Start by sitting down on the end of a flat bench with a block or step positioned right in front of you, and holding a dumbbell on your right leg.2.) Extend your left leg out in front of you then dip your right heel down towards the floor as far as possible as this will be your starting position.3.) Keeping the dumbbell firmly pressed up against your right knee, slowly raise your heel up off of the floor as far as possible squeezing your calf and hold for a count.4.) Return back to the starting position.5.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Dumbbell Single-Leg Cobra',
        'Core,Back,Glutes',
        'Strength',
        'Dumbbell',
        'Steps :1.) Start by standing up straight with a dumbbell in each hand at your sides.2.) Slowly raise one foot off of the floor so that it is about a few inches off of the floor, then lean forward keeping your arms straight and your shoulders flexed above your head.3.) As you continue to lean forward, rotate your hands behind you slowly in an arc movement until you feet tension on your shoulders.4.) Return back to the starting position, switch legs and repeat for as many reps and sets as desired.'
    ),
    (
        'Dumbbell Single-Leg Fly (Stability Ball',
        'Chest',
        'Strength',
        'Dumbbell',
        '1.) Start by sitting on an exercise ball with a dumbbell in both hands.2.) Slowly roll down making sure that your head and shoulders are on the ball and your feet are planted firmly on the floor in front of you.3.) Lift both dumbbells right above your chest and elevate one of your legs so that it is extended out in front of you in level of your shoulders.4.) Slowly lower the weights in a slight bend until your arms at at level with your chest then return back to the starting position.5.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Dumbbell Single-Leg Squat',
        'Upper Legs',
        'Strength',
        'Dumbbell',
        'Steps :1.) Start by setting up a horizontal flat bench behind you, placing one of your legs behind you in the middle of the bench and holding a dumbbell in each hand as this will be your starting position.2.) Cross your arms in front of you and slowly lower your body down towards the floor, bending with your front leg until your knee is parallel with the floor and hold for a count.3.) Return back to the starting position.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Dumbbell Spider Curl',
        'Biceps,Shoulders',
        'Strength',
        'Dumbbell',
        'Steps :1.) Start by holding a dumbbell in each hand and position yourself lying face first on an inclined bench.2.) Then extend your biceps down and out in front of you so that you are able to fully contract your3.) Contract your biceps and curl the weights up towards your shoulders, squeezing your muscles in the process and isolating the biceps4.) Hold for a count when you reach the top position then return back to the starting position.5.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Dumbbell Split Jump',
        'Upper Legs,Glutes,Lower Legs',
        'Strength',
        'Dumbbell',
        'Steps :1.) Start by standing up straight with your feet shoulder width apart and holding a dumbbell in each hand at your sides.2.) Step forward with your left leg, squatting down through your hips and maintaining your balance3.) Squat down so that your front leg becomes parallel with the floor and then push through the balls of your heels so that you explode off of the floor and jump up.4.) Return back to the lunging squat position.5.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Dumbbell Squat',
        'Upper Legs,Lower Legs,Glutes',
        'Strength',
        'Dumbbell',
        'The dumbbell squat exercise is a great workout for the lower body and uses dumbbells instead of a barbell to complete the motion.1.) Start off grabbing a dumbbell in each hand, placing your feet slightly wider than shoulder-width apart with your knees and toes pointed outward.2.) Keeping your abs tightly drawn in, slowly descend by bending at your knees and hips in a squatting motion.3.) Continue to slowly lower yourself as far as you can control without letting your body shift towards your toes.4.) Once in the downward position and as far as you can go down, hold for a count and then slowly return to the starting position.5.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Dumbbell Squat to Bicep Curl',
        'Biceps,Upper Legs,Glutes',
        'Strength',
        'Dumbbell',
        'This exercise combines a squat with a curl to effectively work the entire body. This is an advanced exercise.1.) Stand with your feet shoulder-width apart, your knees slightly bent and your abs drawn in, holding a dumbbell in each hand.2.) As you perform a squat, keep both arms extended holding the dumbbells. 3.) As you come out of the squat position, focus on extending the legs as you curl the dumbbells upward towards the shoulders. 4.) Pause for a moment and repeat for desired repetitions.Tips : 1.) Contract your biceps as you curl your arms up.'
    ),
    (
        'Dumbbell Standing Alternating Lateral Raise',
        'Shoulders',
        'Strength',
        'Dumbbell',
        'Steps :1.) Start by standing up straight with your feet shoulder width apart and holding a dumbbell in each hand.2.) While keeping your body still, slowly raise one of the dumbbells out to the side up to shoulder level, squeezing on the way up and hold for a count.3.) Then return back to the starting position and repeat with the opposite arm.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Dumbbell Step-Up',
        'Upper Legs,Lower Legs,Glutes',
        'Strength',
        'Dumbbell',
        'The dumbbell step-up exercise builds strength and develops coordination in the upper leg and glute areas.1.) Place a bench, box or step in front of you.2.) Grasp a dumbbell in each hand.3.) With your left leg, step up on the bench, follow with your right leg.4.) Step down with your left leg and then your right leg.5.) Repeat starting with your right leg.Tips1.) Use a lighter weight until you are used to the motion of this exercise.'
    ),
    (
        'Dumbbell Stiff-Leg Deadlift',
        'Back,Glutes,Upper Legs',
        'Strength',
        'Dumbbell',
        'Steps :1.) Start by standing up straight with your feet shoulder width apart and your arms at your sides with a dumbbell in each hand.2.) While keeping your knees still, slowly lower your upper body and the dumbbells towards the floor over your feet.3.) Keep moving your body forward until you feel a stretch in your hamstrings then hold for a count.4.) Return back to the starting position by extending through your hips until you are at the start.5.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Dumbbell Stiff-Leg Deadlift',
        'Back,Glutes,Upper Legs',
        'Strength',
        'Dumbbell',
        'Steps :1.) Start by standing up straight, feet shoulder width apart and holding a dumbbell in each hand.2.) While keeping your back straight as possible and legs stiff, slowly lower your upper body down towards the floor along with the dumbbells.3.) Keep the weights at the sides of your legs, feeling a stretch in your hamstrings on the way down.4.) Hold for a count when you reach the lowest point possible, squeezing with your hamstrings and glutes then return back to the starting position.5.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Dumbbell Stiff-Leg Deadlift on Bench',
        'Back,Glutes,Upper Legs',
        'Strength',
        'Dumbbell',
        'Steps :1.) Start by standing up straight, feet shoulder width apart near the edges of two flat benches and holding a dumbbell in each hand.2.) While keeping your back straight as possible and legs stiff, slowly lower your upper body down towards the floor along with the dumbbells, keeping them at the sides of your legs, feeling a stretch in your hamstrings on the way down.3.) Hold for a count when you reach the lowest point possible, squeezing with your hamstrings and glutes then return back to the starting position.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Dumbbell Supinated One-Arm Wrist Curl',
        'Forearms',
        'Strength',
        'Dumbbell',
        '1.) To begin this exercise; take one dumbbell and sit down on the edge of a flat bench and keep your feet on the floor.2.) Take the dumbbell and bring it up so that your forearm and arm are rested on your knee; and the palm of your hand is facing up. 3.) Curl the dumbbells up, through your wrists until you feel a stretch in the muscle.4.) Hold this position for a count and then lower the dumbbell back to the starting position.5.) Repeat for as many reps and sets as desired.Notes :1.) Keep your forearms and legs still during the exercise.2.) You want to make sure that you are isolating and targeting the forearm muscle'
    ),
    (
        'Dumbbell Supination (Side-Lying)',
        'Forearms',
        'Strength',
        'Dumbbell',
        'Steps :1.) To begin this exercise; lie sideways on a flat bench with one arm holding a dumbbell.2.) Then take the upper arm that is holding the dumbbell and rotate the forearm so that it is lifted forward and down.3.) Repeat this exercise for as many repetitions as needed.'
    ),
    (
        'Dumbbell Tate Press',
        'Triceps',
        'Strength',
        'Dumbbell',
        'The dumbbell tate press is an advanced tricep exercise that moves the muscle differently but still targets and builds the tricep muscle.1.) Start by lying flat on a bench with your head at one end and your feet firmly planted on the floor at the other end.2.) Hold a dumbbell in each hand so your palms are faced towards your feet.3.) Drawing your abs in and keeping your back on the bench, raise the weights to the center of your chest.4.) Without moving elbows, slowly raise your arms up and out contracting your triceps.5.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Dumbbell Tricep Extension',
        'Triceps',
        'Strength',
        'Dumbbell',
        'The dumbbell standing triceps extension works the tricep muscles by extending your arms behind your neck.Steps :1.) Start by standing with your feet shoulder width apart, keeping your back straight and your abs drawn in.2.) Hold a dumbbell in both hands, with your palms facing up.3.) Raise the dumbbell over your head and slowly lower the dumbbell in an arc behind your head and hold for a count.4.) Slowly raise the dumbbell back up to the starting position.'
    ),
    (
        'Dumbbell Tricep Extension (Supine)',
        'Triceps',
        'Strength',
        'Dumbbell',
        'The dumbbell lying supine two arm tricps extension exercise is a lying version of the tricep kickback that strengthens and builds the tricep muscles.Steps :1.) Start by lying flat on a bench with your head at one end and feet firmly on the floor at the other end.2.) Grab a dumbbell in each hand and raise them at arms length over your shoulders.3.) Lower the dumbbells in an arc bending your elbows until your forearms are touching your biceps.4.) Slowly return to the starting position.5.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Dumbbell Tricep Extension (Supine)',
        'Triceps,Chest,Shoulders',
        'Strength',
        'Dumbbell',
        'Steps :1.) Start by laying with your back on a flat bench with your legs in front of you, holding a single dumbbell up above your chest.2.) Slowly lower the dumbbell to your head, bending only at your elbows and squeezing your triceps, until the dumbbell almost touches your head.3.) Hold for a count then return back to the starting position.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Dumbbell Tricep Extension (Supine)',
        'Triceps',
        'Strength',
        'Dumbbell',
        'The dumbbell lying tricep extension exercise uses gravity to help increase the resistance of the weight for better targeting and building of strong tricep muscles.Steps :1.) Start by lying of a flat bench with your head at one end and your feet planted firmly on the floor in the other end.2.) Grab a dumbbell with both hands, with your palms facing up and raise it above your body, keeping your arms pointed towards the ceiling.3.) Making sure that your upper arms and elbows are still, lower the dumbbell behind your head, feeling a stretch in your tricep muscles.4.) Hold this position for a count then return back to the starting position.'
    ),
    (
        'Dumbbell Tricep Kickback',
        'Triceps',
        'Strength',
        'Dumbbell',
        'Steps :1.) Start by standing with your feet shoulder width apart, knees bent at around 25-degrees, your hands holding dumbbells with your elbows bent at 90-degrees.2.) Bend your body forward so that the dumbbells are parallel with your legs and then slowly lift the dumbbells behind you so that you feel a stretch in your triceps.3.) Hold this position for a count and then return back to the start.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Dumbbell Tricep Kickback with Stork Stance',
        'Triceps',
        'Strength',
        'Dumbbell',
        'Steps :1.) Start by standing on one leg bending the knee at 20-degrees and holding dumbbells in front of your chest with elbows bent at around 90-degrees.2.) Slowly bend forward in your core raising one of your legs behind you creating a body line that is parallel with the floor.3.) After gaining your balance, execute a tricep kickback by extending your elbows back and feeling a stretch in your triceps.4.) Hold this position for a few seconds then return back to the starting position.5.) Repeat for as many reps and sets desired.'
    ),
    (
        'Dumbbell Upright Row',
        'Shoulders',
        'Strength',
        'Dumbbell',
        'The dumbbell upright row exercise helps targets your upper back, deltoids, traps and even your biceps. Steps :1.) Start off standing up straight with your feet shoulder-width apart and keeping your abs tight.2.) Grab a dumbbell in each hand, with your palms facing in towards your body, and elbows out away from your sides.3.) Slowly raise the dumbbell to about chin level, but no so far that it feels uncomfortable. 3.) Once in position slowly raise the dumbbells up to chin level until you feel a squeeze in your deltoids.4.) Hold for a count at the top position and then return back to the starting position.'
    ),
    (
        'Dumbbell Upright Row',
        'Shoulders,Biceps',
        'Strength',
        'Dumbbell',
        'Dumbbell Upright Row is a great way to target your shoulder muscles1.) Begin by standing up straight with a dumbbell in each each hand and gripping the dumbbell with an overhand grip.2.) The dumbbells should be resting on your thighs.2.) Slowly pull the dumbbells upward towards your rib cage.3.) Stop raising just before the dumbbells reach chest height, hold for a count and squeeze your shoulders.4.) Return back to the starting position and repeat for as many reps and sets as desired.'
    ),
    (
        'Dumbbell Walking Lunge',
        'Upper Legs,Glutes,Lower Legs',
        'Strength',
        'Dumbbell',
        'The dumbbell walking lunge exercise helps strengthen the leg and core muscles through constant motion.1.) Start off by either placing a barbell across your upper back or by grasping a dumbbell in each hand.2.) Stand with your feet about 8 inches apart, toes facing forward.3.) Take a lunge forward keeping your abs drawn in and your upper body straight.4.) Slowly lower one knee down as if kneeling while keeping your other knee bent at a 90 degree angle.5.) Lower your body to just above the floor and hold for a moment before pushing off with the back foot.6.) Step through and repeat the exercise with the other leg.Tips :1.) Refrain from touching your knee to the ground.'
    ),
    (
        'Dumbbell Wall Squat',
        'Upper Legs',
        'Strength',
        'Dumbbell',
        'Steps :1.) Start by positioning your back flat up against a wall holding dumbbells at your sides with your knees slightly bent.2.) Slowly slide your body down against the wall, lowering your glutes towards the floor until your thighs are parallel with the ground and hold for a count.3.) Return back to the starting position.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Dumbbell Wood Chop',
        'Core',
        'Strength',
        'Dumbbell',
        'Steps :1.) Start off standing with your feet shoulder width apart and your knees slightly bent holding a dumbbell over your head to one side of your body.2.) Slowly bring the dumbbell down in a diagonal direction, pressing the weight into your opposite thigh, squeezing your oblique muscles.3.) Return back to the starting position and repeat for as many reps and sets as desired.'
    ),
    (
        'Dumbbell Wrist Curl (Neutral Grip)',
        'Forearms',
        'Strength',
        'Dumbbell',
        'Steps :1.) Start by kneeling in front of a horizontal bench with your forearms rested upon the padding and holding a dumbbell in both hands with a neutral grip.2.) Slowly lower the dumbbell down below the bench as far as possible squeezing your forearms and hold for a count.3.) Then return back to the starting position.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Dumbbell Wrist Curl (Palms Down)',
        'Forearms',
        'Strength',
        'Dumbbell',
        '1.) Start by picking up a dumbbell in each hand while kneeling over a bench.2.) With your palms facing downwards flex each forearm by lifting and lowering each dumbbell with only your wrist.3.) Exhale while raising your wrist and hold for a count, feeling a stretch in your forearms.4.) Inhale while lowering your wrist.  5.) Repeat for the desired amount of reps.Notes :- Make sure that your arms do not move during each rep; you are isolating the forearms for this exercise.'
    ),
    (
        'Dumbbell Wrist Curl (Palms Up)',
        'Forearms',
        'Strength',
        'Dumbbell',
        '1.) Start by picking up a dumbbell in each hand while kneeling over a bench.2.) With your palms facing upwards flex each forearm by lifting and lowering the dumbbell with only your wrist.3.) Exhale while raising your wrist.4.) Inhale while lowering your wrist.  5.) Repeat for the desired amount of reps and sets.'
    ),
    (
        'Dumbbell Zottman Curl',
        'Biceps,Forearms',
        'Strength',
        'Dumbbell',
        'The dumbbell zottman curl is an advanced bicep exercise where you turn the dumbbells up and out to strengthen and build the biceps.1.) Start off standing with your feet shoulder-width apart, your knees slightly bent and abs drawn in.2.) Grab a dumbbell in each hand with your palms facing each other and hands at your sides.3.) Curl your arms up turning your wrists so they are facing down as the dumbbells reach your chest, squeezing your bicep muscles.4.) Pause for a moment and then return to the starting position.5.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Dynamic Back Stretch',
        'Back',
        'Stretching',
        'Body Only',
        'Steps :1.) Start by standing up straight with your feet shoulder width apart and arms at your side.2.) Swing your arms straight up in front of you towards the ceiling and repeat for about 5 to 10 times, feeling a stretch in your back.3.) Repeat for as many reps as desired.'
    ),
    (
        'Dynamic Chest Stretch',
        'Chest',
        'Stretching',
        'Body Only',
        '1.) Start by standing up straight with your arms at your side and feet shoulder width apart.2.) Extend your hands out in front of you palms together then quickly move your arms back as far as possible.3.) Return back to the starting position quickly and repeat for as man reps and sets as desired.'
    ),
    (
        'Eagle Pose',
        'Core,Glutes,Shoulders',
        'Stretching',
        'Body Only',
        '1.) Begin by standing with your feet shoulder with apart, bending your left knee and extending your right leg up.2.) Use the momentum of your right leg lifting to wrap it around the opposite whilst wrapping your left arm on top of your right.3.) Keeping your elbows crossed, bring the backs of your hands towards each other and cross your wrists and forearms bringing your palms together.4.) From there lift your elbows up so that they rise off your chest stretching your shoulders.5.) Hold this pose for 5 to 10 breaths and return back to the starting position.6.) Repeat this pose on the opposite side.'
    ),
    (
        'Elevated Push-Up',
        'Chest,Shoulders,Triceps',
        'Strength',
        'Bench',
        'Steps :1.) Start in a push-up position with a flat bench positioned behind your feet. 2.) Elevate your feet and place them either in the middle of the bench or at the edge of it (depending on the position of the bench) so that your body is elevated off of the floor.3.) Slowly lower yourself down towards the ground until your chest almost touches the floor and you feel tension in your muscles.4.) Hold this position for a second then return back to the starting position, pushing up with your pecs and squeezing your chest on the way up.5.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Elliptical Training',
        'Cardio',
        'Cardio',
        'Machine - Cardio',
        'The elliptical is a stationary exercise machine used to simulate walking, running or stair climbing.You are able to burn a significant amount of calories, tone up, increase endurance and strength and build power calf and abdominal muscles through the use of an elliptical'
    ),
    (
        'Exercise Band Reverse Fly',
        'Shoulders,Triceps,Back',
        'Strength',
        'Bands',
        '1.) To begin this exercise; start off by taking a band with cable grips and wrapping it around a post on a workout machine.2.) Holding onto the handles, stand back a few feet from post so that the bands are tightened, extend your arms in front of you then move your arms to the sides and backward.3.) Keep your arms extended the entire time and parallel with the floor and at shoulder level. 4.) Hold onto this position for a few seconds.5.) Return back to the starting position.6.) Repeat this exercise for as many repetitions as needed.'
    ),
    (
        'Exercise Dome One-Arm Push-Up',
        'Chest,Shoulders,Triceps',
        'Strength',
        'None',
        'The one-arm biased push up is an advanced push up that targets the pectoral muscles as well as the core and helps strengthen and build stronger muscles.Steps :1.) Start off by placing the dome so that when you perform the exercise that one hand is one the dome and the other is on the floor.2.) Place the dome flat side down on the floor and then kneel down so that your arms are fully extended and body is straight.3.) Once in position, slowly lower your chest down towards the dome until you feel a stretch in your chest muscles.4.) hold this position for a count and then return back up to the starting position.'
    ),
    (
        'Exercise Dome Push-Up',
        'Chest,Shoulders,Triceps',
        'Strength',
        'None',
        'The push up on an exercise dome exercise helps strengthen abdominal and back muscles and uses a half exercise dome to help perform the exercise.Steps :1.) Start by placing an exercise dome flat side down on the floor and then kneeling behind the dome with your arms fully extended and body straight.2.) While keeping your abs drawn in and body straight, lower your chest down towards the dome until you feel a stretch in your chest muscles.3.) Hold the up position for a count and then slowly return back up to the starting position.'
    ),
    (
        'Extended Arm Child Pose',
        'Core,Back,Shoulders',
        'Stretching',
        'Body Only',
        '1.) Start off with placing your hands and knees on the floor keeping your feet extended and hands underneath your shoulders.2.) Take your right hand and place it underneath your left and slowly sit back onto your heels. 3.) Move your head forward in the direction of your stretch and hold this position for 5 to 10 breaths.4.) Return back to the starting position and repeat with the opposite side.'
    ),
    (
        'EZ Bar Bent-Over Row (Reverse Grip)',
        'Back,Biceps,Shoulders',
        'Strength',
        'EZ Curl Bar',
        'Steps :1.) Start by setting up an EZ bar with as much weight as you can handle and placing it in front of you, keeping your feet shoulder width apart and arms at your sides.2.) Squat down and grab onto the bar with a reverse grip, then while keeping your back straight, stand up so that you are holding the bar against your waist.3.) Slightly bend your knees, keep your back straight, then let the barbell slowly lower beneath your knees.4.) Slowly pull the bar back up just below your chest, squeezing with your back and feeling a stretch, then hold for a count and return back to the starting position.5.) Repeat for as many reps and set as desired.'
    ),
    (
        'EZ Bar Close Grip Curl',
        'Biceps,Forearms',
        'Strength',
        'EZ Curl Bar',
        'The EZ bar close grip curl uses an ez bar to isolate the bicep muscles.1.) Start by standing up straight with your feet shoulder width apart, knees slightly bent and abs drawn in.2.) Grab an EZ bar with an underhand close grip on the inner-most part of the bar.3.) Extend your arms fully against your thighs.4.) Keeping your elbows straight, raise the bar towards your chest, squeezing your biceps as much as possible.5.) Pause for moment and then return to the starting position.6.) Repeat for as many reps and sets as desired.'
    ),
    (
        'EZ Bar Curl',
        'Biceps',
        'Strength',
        'EZ Curl Bar',
        'The EZ-Bar Curl exercise uses either an EZ-bar or curl bar to help isolate the biceps and build bigger arms.1.) Start by standing up straight with your feet shoulder-width apart and your knees slightly bend.2.) Grab onto the barbell in front of you with an underhand (palms up) grip and lower the bar until it is up against your thighs as this will be your starting position.3.) Making sure that you keep your elbows still, raise the bar slowly up towards your chest until your forearms touch your biceps, feel a stretch and squeeze in those muscles.4.) Hold for a count then return back to the starting position.5.) Repeat for as many reps and sets as desired.Tips : 1.) You can lean up against a wall or a post to prevent yourself from swaying thus making the exercise ineffective.'
    ),
    (
        'EZ Bar Curl (Reverse Grip)',
        'Forearms,Biceps',
        'Strength',
        'EZ Curl Bar',
        'Steps :1.) Start by standing up straight with your feet shoulder width apart and holding a weighted EZ Bar in your hands at waist level in a reverse grip.2.) Slowly elevate the bar up towards your shoulders, squeezing your forearms and hold for a count.3.) Return back to the starting position.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'EZ Bar Decline Close Grip Skull Crusher',
        'Triceps,Chest,Shoulders',
        'Strength',
        'EZ Curl Bar',
        'The EZ bar decline close grip skull crusher exercise combines the close grip bench press with tricep extension to target the tricep muscle and build bigger arms.Steps :1.) Start by lying with your back on a flat bench and gripping a barbell with a close grip, about 8-12 inches apart.3.) Keeping your arms close to your sides lower the bar so it touches your chest.4.) Slowly return to starting position, concentrating on your triceps.5.) At the top of the exercise bend your arms down towards your head.6.) Raise the bar back up over your chest and repeat.'
    ),
    (
        'EZ Bar Decline Tricep Extension',
        'Triceps',
        'Strength',
        'EZ Curl Bar',
        'The decline EZ bar triceps extension exercise combines the decline bench as well as a curved bar to easily target the tricep muscles and build bigger arms.Steps :1.) Start off lying face up (back flat) on a decline bench and grabbing an EZ bar with an overhand grip.2.) Extend your arms up and out so that they are perpendicular with your chest, keeping your elbows tucked in at one place.3.) Slowly lower the EZ bar towards your head, feeling a stretch in your tricep muscle and hold the position for a count.4.) Return back up to the starting position and repeat for as many reps and sets as desired.'
    ),
    (
        'EZ Bar French Press',
        'Triceps,Shoulders',
        'Strength',
        'EZ Curl Bar',
        'Steps :1.) Start by taking a weighted EZ Bar and grabbing it with a neutral grip.2.) Elevate the bar over the top of your head so that your arms are straight and keeping a strong grip on the bar.3.) Slowly lower the bar behind your head, bending at the elbows, so that it goes down in a back and semi-circular motion.4.) Squeeze the triceps as you lower the bar down and then hold for a count.5.) Return back to the starting position and repeat for as many reps and sets as desired.'
    ),
    (
        'EZ Bar French Press (Reverse Grip)',
        'Triceps',
        'Strength',
        'EZ Curl Bar',
        'Steps :1.) Start by loading up a EZ bar with the weight that you would like to perform for this exercise.2.) Hold the bar with an underhand grip, lift it above your head, then slowly while keeping your elbows close to your body, lower the weight behind your head while squeezing your triceps and hold for a count.3.) Return back to the starting position.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'EZ Bar Incline Tricep Extension',
        'Triceps',
        'Strength',
        'EZ Curl Bar',
        'The EZ Bar incline triceps extension exercise is a version of the triceps extension that uses gravity to increase the resistance of the exercise.1.) Start by grabbing onto a barbell with a close grip (4 to 6 inches apart) and lie on an incline bench, holding the barbell over your head, as this will be your starting position.2.) Slowly lower your arms in an arc until your forearms touch your biceps and you feel a stretch in your tricep muscles.3.) Hold this position for a count then return back up to the starting position.4.) Repeat for as many reps and sets as you desire.'
    ),
    (
        'EZ Bar Preacher Curl (Close Grip)',
        'Biceps',
        'Strength',
        'EZ Curl Bar',
        'Steps :1.) Start by setting up either weighted EZ bar with the weight that you would like to use to perform this exercise.2.) Then sit down on the bench with your feet flat on the floor and arms extended out grabbing onto the bar with a close underhand grip.3.) Slowly curl the bar up towards your shoulders, isolating and squeezing your shoulders, and hold for a count.4.) Return back to the starting position.5.) Repeat for as many reps and sets as desired.'
    ),
    (
        'EZ Bar Preacher Curl (Reverse Grip)',
        'Forearms,Biceps',
        'Strength',
        'EZ Curl Bar',
        'Steps :1.) Start by sitting on a preacher bench and holding a weighted EZ Bar in your hands with arms rested on the pad.2.) Slowly elevate the bar up towards your shoulders, squeezing your forearms and hold for a count.3.) Return back to the starting position.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'EZ Bar Seated Curl (Close Grip)',
        'Biceps,Forearms',
        'Strength',
        'EZ Curl Bar',
        'The EZ bar seated close grip curl uses a barbell to limit your range of motion through concentration and increases the effectiveness of the movement.1.) Start by sitting on the end of a flat bench with your feet flat and your legs spread live a V.2.) Bend forward at your waist keeping your back straight.3.) Grasp a barbell in your hands with a close grip, palms facing up.4.) With your elbow pressed against your inner thigh just above your knee, curl the bar up towards your chest.5.) Slowly lower the bar to the starting position near the floor.6.) Repeat for as many reps and sets as desired.'
    ),
    (
        'EZ Bar Seated Reverse Grip French Press',
        'Triceps',
        'Strength',
        'Barbell',
        'Steps :1.) Start by loading up a weighted barbell or EZ bar with the weight that you would like to perform for this exercise.2.) Sit down on a the end of a flat bench and this will be your starting position.3.) Grab the bar with an underhand grip, lift it above your head, then slowly while keeping your elbows close to your body, lower the weight behind your head while squeezing your triceps and hold for a count.4.) Return back to the starting position.5.) Repeat for as many reps and sets as desired.'
    ),
    (
        'EZ Bar Tricep Extension',
        'Triceps',
        'Strength',
        'EZ Curl Bar',
        'The EZ bar triceps extension exercise combines a decline bench and a curved bar to effectively work the tricep muscle.Steps :1.) Start by lying face up on a decline bench and grasp an EZ Bar with an overhand grip.2.) Extend your arms so they are perpendicular to your chest, keeping your elbows in one place, and lower the bar toward your head.3.) Hold the position for a count.4.) Slowly return to the starting position and repeat for as many reps and sets as desired.'
    ),
    (
        'EZ Bar Tricep Extension (Close Grip)',
        'Triceps',
        'Strength',
        'EZ Curl Bar',
        'The EZ bar lying close-grip triceps extension behind the head exercise helps further concentrate on targeting the tricep muscles and building bigger arms.1.) Start by lying flat on a bench with your head at one end and feet planted on the floor on the other end.2.) Grab an ez-bar or barbell with a grip about 8 inches apart and lower the bar behind your head.3.) Keeping the bar parallel with the floor, bend your arms down in an arc so the bar moves in a direction under your head.4.) Slowly return to starting position.5.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Field Sports',
        'Cardio',
        'Cardio',
        'Others',
        'Field sports are any sports that are performed outdoors such as lacrosse.These sports can help increase endurance, agility, flexibility, stamina as well as burn calories, lose weight and tone up the body.'
    ),
    (
        'Fish Pose',
        'Core,Back,Chest',
        'Stretching',
        'Body Only',
        '1.) Begin by sitting on the floor with your legs straight in front of you and feet close together.2.) Take your hands, place them behind your body with palms facing backward and lean back to put the pressure on your forearms.3.) Straighten out your arms and lift upward with your chest.4.) Lean back towards the floor keeping your head up and slide your elbows up towards your head.5.) Stretch your arms overhead and reach up with your fingertips, holding onto this position for 5 to 10 breaths.'
    ),
    (
        'Flutter Kick',
        'Glutes,Upper Legs',
        'Strength',
        'Body Only',
        'The flutter kick exercise works and strengthens the hamstrings and the muscles on the back of the thigh.1.) Start off in a prone position on the floor, resting your forehead on your hands that are out in front of you.  2.) While keeping both legs straight, raise one leg off the floor a few inches, lower and repeat on the opposite side.3.) As you feel more comfortable with the movement, you can pick up the speed slightly, so you re not resting between reps. It should look similar to how your feet move up and down while swimming.4.) Repeat for as many reps and sets as desired.Tips : 1.) Keep your back straight throughout this exercise and hips in contact with the floor.'
    ),
    (
        'Forearm Plank with Hip Abduction',
        'Core,Back,Glutes',
        'Strength',
        'Body Only',
        'Steps :1.) Start off on your hands and toes in a modified push-up position. Next, place both forearms on the ground and extend both legs transitioning to a plank.2.) Take one of your legs and bring them out to the side of your body (hip abduction), keeping it parallel to the floor, holding the position for a few seconds.3.) After feeling tension in your core, bring the leg back to the center and then return to the starting position.4.) Repeat this motion with the opposite leg and continue to alternate.5.) Perform as many reps and sets as desired.'
    ),
    (
        'Forward Step-Up',
        'Upper Legs,Glutes,Core',
        'Strength',
        'Bench',
        'Steps :1.) Begin by facing the side of a box or bench with your feet shoulder width apart and feet straight ahead, keeping your hands on your hips.2.) Step up and forward with one foot on the box, the with your opposite hip step up with the other foot.3.) While holding your hips, step back down and repeat this motion for as many time as possible.'
    ),
    (
        'Frog Sit-Up',
        'Core',
        'Strength',
        'Body Only',
        '1.) Begin in a sit-up position on a floor or mat.  2.) Have your legs spread out but connected with the soles touching each other.  3.) Cross your hands on your chest.4.) Perform a crunch while keeping your feet together.5.) Repeat for the desired amount of reps.'
    ),
    (
        'Gironda Sternum Pull-Up',
        'Back,Biceps',
        'Strength',
        'Pullup Bar',
        'The Gironda sternum chin-up exercise is a variation of the basic chin up that focus more upon the lats and lower back.Steps :1.) Start by grabbing a pull up bar with a shoulder-width, overhand grip and hang from it with your arms fully extended. This will be your starting position.2.) Slowly pull yourself up towards the bar and lean your head as far back as possible while arching your spine.3.) Continue pulling so that your collarbone passes the bar and you are able to touch it with your sternum and then hold this position for a count.4.) Return back to the starting position and repeat for as many reps and sets as desired.'
    ),
    (
        'Glute Kickback',
        'Glutes,Lower Legs,Upper Legs',
        'Strength',
        'Body Only',
        '1.) To begin this exercise; start off with your knees on the floor in a kneeling push-up position.2.) Raise your right leg until your hamstrings are parallel with your back maintaining the 90-degree level squeezing your glutes throughout the movement.3.) Hold this position for a few seconds and return back to the starting position followed by alternating the exercises with the other leg.4.) Repeat this exercise for as many repetitions as needed.'
    ),
    (
        'Glute Kickback',
        'Glutes',
        'Strength',
        'Body Only',
        'Steps :1.) Start by setting up a standing glute kickback machine by adjusting the leg padding on the machine then place the padding underneath one of your knees.2.) Grab onto the bars and stand with a bend in your knees, then slowly push your leg behind you, extending back as far as you can, squeezing your glutes and hold for a count.3.) Return back to the starting position.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Glute Stretch',
        'Glutes',
        'Stretching',
        'Body Only',
        '1.) To begin this exercise; start off flat on your back with knees bent and feet flat on the floor.2.) Take your ankle and place in on your opposite knee.3.) With the bottom leg, grab the knee and pull both legs as close to your chest as possible and hold for up to 15 to 30 seconds.4.) Repeat this exercise for as many repetitions as needed.'
    ),
    (
        'Gorilla Chin-Up with Crunch',
        'Back,Biceps,Core',
        'Strength',
        'Pullup Bar',
        'Steps :1.) To begin the exercise, start in a hang from the chin-up bar with an underhand grip.2.) Take your legs and bend your knees so that your calves are behind your back and keep them at a 90-degree angle.3.) Pull yourself up as in a regular chin up, crunching your knees on the way up until they have reached your chest. 4.) As soon as your chin is at the level of the bar, you will stop.5.) Following reaching the final position, return your body back to the starting position inhaling on the way down.6.) Repeat this exercise for as many repetitions as needed.'
    ),
    (
        'Hack Calf Raise',
        'Lower Legs',
        'Strength',
        'Machine - Strength',
        'Steps :1.) Start by setting up a hack squat machine with the amount of weight that you would like to perform for this exercise, laying with your chest flat on the pad and shoulders rested underneath the shoulder pads.2.) Stand on the platform and push the weight up off of the rack and hold onto the hand rests as this will be your starting position.3.) While keeping your legs straight, slowly raise your heels up off of the floor as far as possible, squeezing your calves and hold for a count.4.) Return back to the starting position.5.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Hack Single-Leg Calf Raise',
        'Lower Legs',
        'Strength',
        'Machine - Strength',
        'Steps :1.) Start by setting up a hack squat machine with the amount of weight that you would like to perform for this exercise, laying with your chest flat on the pad and shoulders rested underneath the shoulder pads.2.) Stand on the platform, push the weight up off of the rack and hold onto the hand rests as this will be your starting position.3.) While keeping your legs straight, slowly raise one of your heels up off of the floor as far as possible, letting your other leg extend out behind you, and squeeze your calf.4.) Hold for a count and return back to the starting position.5.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Hack Squat',
        'Upper Legs,Lower Legs,Glutes',
        'Strength',
        'Machine - Strength',
        'The hack squat exercise is a variation of the squat workout which uses a machine in place of squat rack and may be preferred by beginners.1.) Start off lying face up on a hack squat machine with your shoulders up against the pad, placing your feet forward at a slightly less than shoulder-width apart and toes pointed slightly outward as this will be your starting position.2.) Once in position, release the dock levers, place your hands on the grips, keep your abs tightly drawn in and extend your body so that you are standing upright.3.) Slowly lower your body down into a squatting position so that your knees are bent and you feel a stretch in your quad and hamstring muscles.4.) Hold for a count and then return back to the starting position.5.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Hack Squat (Narrow Stance)',
        'Upper Legs,Glutes,',
        'Strength',
        'Machine - Strength',
        '1.) To begin this exercise; start off with you back flat on the back pad of the hack squat machine and placing your shoulders underneath the pads.2.) Then place your legs less than shoulder width apart in a very narrow stance with toes pointed out.3.) Straighten your legs without locking your knees then begin to lower the machine down as you bend your knees continuing on until your upper legs and knees form a 90-degree angle.4.) Return back to the starting position by pushing up on your heels and powering upward.5.) Repeat this exercise for as many repetitions as needed'
    ),
    (
        'Hack Squat (Reverse Position)',
        'Upper Legs,Glutes,Lower Legs',
        'Strength',
        'Machine - Strength',
        'Steps :1.) Start by setting up the hack squat machine with the amount of weight that you would like to perform for this exercise and then place yourself with your chest flat on the pad and shoulders up against the shoulder rests.2.) Push up with your body to remove the weights up off of the stacks and place your arms on the side handles as this will be your starting position.3.) Slowly lower the weight down until your thighs create right angles with your calves and hold for a count.4.) Return back to the starting position.5.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Half Locust',
        'Upper Legs,Core,Chest',
        'Stretching',
        'Body Only',
        'Steps :1.) Start by laying face down on the floor, placing a hand under your left hipbone and then bending your right knee back so that you are able to grab it with your right hand.2.) Slowly lift your right foot up into the air as you lift your shoulders off of the floor and grab your right foot with your right hand.3.) Pull back on the foot so that it stretches out your right hip flexor.4.) Hold this position for 15 to 30 seconds then return back to the starting position.5.) Repeat for as many reps, sets and duration as desired.'
    ),
    (
        'Hamstring Stretch',
        'Upper Legs',
        'Stretching',
        'Body Only',
        'Steps :1.) Start off laying flat on your back with one knee bent and the other foot extended out to stabilize your body.2.) With the bent leg, extend it up in the air so that the sole of your foot is pointed up in the air, placing your clasped hands around the extended leg for support.3.) Straighten out the leg as much as possible feeling a stretch in your hamstrings, then try to pull it as close as you can towards your nose.4.) Hold this position for 15 to 30 seconds then return back to the starting position.5.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Hamstring Stretch (Supine)',
        'Upper Legs,Glutes,Core',
        'Stretching',
        'Body Only',
        '1.) Start off by lying flat on your back, flexing your hip and knee to a 90-degree angle.2.) Take your bent knee and slowly extend it to the ceiling until you feel a stretch; while keeping your opposite foot still planted on the floor.3.) Keep your spine vertical without moving it.4.) Hold this position for 15 to 30 seconds and switch feet.'
    ),
    (
        'Handstand Push-Up',
        'Shoulders,Triceps',
        'Strength',
        'Body Only',
        'Steps :1.) Start with your back up against a wall, then bend forward placing both hands on the floor in front of you shoulder width apart.2.) Slowly kick your feet up against the wall, still keeping your arms straight, and walk your way up the wall with your feet so that your legs and arms are fully extended.3.) Make sure that your body is straight and balanced before you move onto the next step.4.) Slowly, through your shoulders, lower yourself towards the ground so that your head almost touches the floor and you feel a stretch in your shoulders and upper body.5.) Push yourself back up until your elbows are near locked.6.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Hanging Knee Raise',
        'Core',
        'Strength',
        'Pullup Bar',
        'Steps :1.) Start off by grabbing onto a hanging grip or pull up bar, with a comfortable distance between your hands and a strong grip.2.) Then slowly lift your knees in towards your chest until you feel tension on your lower abs.3.) Hold this position for a few seconds then return back to the starting position and repeat for the desired reps and sets.'
    ),
    (
        'Hanging Knee Raise (Rotational)',
        'Core,Forearms',
        'Strength',
        'Pullup Bar',
        'Steps :1.) Start by standing underneath a pull up bar and pull yourself up off of the ground so that you are hanging above the floor.2.) Pull your knees up and across to one side of your body until you feel a stretch in your abs then hold for a count.3.) Return back to the starting position and repeat in the opposite direction.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Hanging Knee Raise Rotation',
        'Core',
        'Strength',
        'Pullup Bar',
        'Steps :1.) Start by grabbing onto a hanging grip or pull up bar, with a comfortable distance between your hands and a strong grip.2.) Then slowly lift your knees in towards your chest in a diagonal direction rotating your legs from side to side until you feel tension on your lower abs.3.) Hold this position for a few seconds then return back to the starting position and repeat for the desired reps and sets.'
    ),
    (
        'Hanging Leg Raise',
        'Core',
        'Strength',
        'Pullup Bar',
        '1.) Grab onto a pull up bar.2.) Hang from the pull up bar.  3.) Bring your knees to your chest.  4.) Lower your knees back down to where you are hanging.5.) Repeat for the desired amount of reps.'
    ),
    (
        'Hanging Pike',
        'Core',
        'Strength',
        'Pullup Bar',
        '1.) Start by grabbing onto a pull up bar.2.) Bring your knees up towards your chest.3.) Do a crunch and raise your legs up above your head.  4.) Repeat for the desired amount of reps.'
    ),
    (
        'Hare Pose',
        'Core,Back',
        'Stretching',
        'Body Only',
        '1.) Start by sitting on your knees keeping them close together.2.) Fold your body forward so that your forehead rests on or near the floor. Extend your arms behind you near your feet.3.) Take your hands and hold onto the sides of your feet, then lift your buttocks high in the air.4.) Hold onto this position for 5 to 10 breaths and return back to the starting position.'
    ),
    (
        'Hero Pose',
        'Core,Glutes,Upper Legs',
        'Stretching',
        'Body Only',
        '1.) Begin by kneeling on the floor with your knees close together and your feet wide apart.2.) Place your hands on the soles of your feet and lift up from your pubic bone and back towards the ceiling.3.) Hold this position for a few seconds and return back to the starting position.'
    ),
    (
        'Hip Abduction',
        'Glutes,Upper Legs',
        'Strength',
        'Body Only',
        '1.) Start off standing up straight with your arms extended again a wall.2.) Slowly cross one of your legs behind you then flexing away with your upper body away from the stretched leg until you feel tension in your hips and legs.3.) Move side to side for about 15 to 30 seconds and repeat for as many reps and sets as desired.'
    ),
    (
        'Hip Adduction',
        'Glutes,Upper Legs',
        'Strength',
        'Body Only',
        'Steps :1.) Begin standing with one leg straight and in front of the other leg, keeping both feet pointed forward.2.) Slowly shift your body in a sideways motion towards the bent leg until you a feel a stretch in your groin area.3.) Move side to side for 15 to 30 seconds repeating as many reps and sets as desired.'
    ),
    (
        'Hip Flexor Stretch',
        'Upper Legs',
        'Stretching',
        'Body Only',
        'Steps :1.) Start by standing up straight with your spine vertical and your left foot in front of the right.2.) Bend slowly at both knees and lift your back heel up off the floor.3.) Shift your weight forward and direct your body in a lunge position using your front foot as the stabilizer and your back foot still bent near the floor and extended back.4.) Hold this position for 15 to 30 seconds then return back to the start.5.) Repeat for as many reps, sets and however long you desire.'
    ),
    (
        'Hip Raise',
        'Core,Glutes,Back',
        'Strength',
        'Body Only',
        '1.) Begin this exercise in the pushup position, the bridge.2.) Push your buttock towards the ceiling, squeezing your abs tightly as your push your glutes up higher. 3.) As you continue to raise your glutes up you will be in a final high bridge position. 4.) Upon reaching this final position, exhale to release the tension on your abdominals.5.) Return back to the starting position slowly, breathing in and you go back down.6.) Repeat this exercise for the amount of repetitions needed.'
    ),
    (
        'Hip Stretch',
        'Back,Core,Glutes',
        'Stretching',
        'Body Only',
        'Steps :1.) Start by sitting on the floor with one leg extended out in front of you, the other bent and crossed over the extended leg.2.) Keep one hand on the floor and the other rested upon the bent knee.3.) Slowly rotate your upper body in the direction of the bent leg until you feel a stretch on the lower back.4.) Hold for 15 to 30 seconds then switch sides.5.) Repeat for as many reps and duration as desired.'
    ),
    (
        'Hundreds',
        'Core,Back',
        'Strength',
        'Body Only',
        '1.) Start off with your back on the ground and your knees bent at a 45-degree angle, keeping your feet flat on the floor and thighs connected.2.) Rest your arms by your sides with palms flat on the floor and a slight bend in the elbows.3.) Flex your upper body forward, letting your head and shoulders curl up off of the floor, bringing up your chest.4.) When in position, raise your arms off of the floor and keep them at level with your shoulders.5.) With your abs flexed, move your arms up and down rapidly but in a controlled motion.6.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Incline Push-Up Depth Jump',
        'Chest,Shoulders,Triceps',
        'Strength',
        'Bench',
        'Steps :1.) Start by positioning a box behind you and two aerobic steps to your sides in a push-up position.2.) Get into a push-up position with your feet on the box and hands right in between the aerobic steps.3.) Using your force, push yourself up off of the floor extending your hands up off of the ground and quickly move your hands onto the steps.4.) Push yourself off of the aerobic steps and back onto the floor.5.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Indoor Cycling',
        'Cardio',
        'Cardio',
        'Machine - Cardio',
        'Indoor cycling is a form of exercise that focuses on endurance, stamina, strength, intensity, intervals and recovery'
    ),
    (
        'Inline Skating',
        'Cardio',
        'Cardio',
        'Others',
        'Inline skating is a sport that helps tone your body, build a strong core and muscles, burn calories, increases endurance and stamina as well as improve coordination and balance.'
    ),
    (
        'Iron Cross Stretch',
        'Glutes',
        'Stretching',
        'Body Only',
        'Steps :1.) Begin by laying flat on your back in a cross position so that you are forming the "T" shape, arms out to the sides and legs together.2.) Slowly kick one leg towards the opposite hand through a rotation in your lower back and hips.3.) Hold onto this position for 15 to 30 seconds and then repeat for as many reps and sets as desired.'
    ),
    (
        'Iso Lateral Wide Pulldown',
        'Back,Biceps',
        'Strength',
        'Machine - Strength',
        'Steps :1.) Start by sitting on an iso lateral pulldown machine with your feet flat on the floor in front of you and thighs rested underneath the padding for stability.2.) Reach up and grab both handles with an overhand grip as this will be your starting position.3.) Slowly pull down, bringing the handles to your sides and squeeze with your back and lat muscles.4.) Hold for a count then return back up to the starting position.5.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Isometric Chest Press',
        'Chest,Shoulders,Triceps',
        'Strength',
        'Body Only',
        'Steps :1.) Start by standing up straight with your arms at your sides and your feet shoulder width apart.2.) Place your arms in a 90-degree angle right in front of your chest with your palms together.3.) Push your hands against each other and contract your chest until you feel tension in your muscles.4.) Hold onto this position for 15 to 30 seconds then return back to the starting position.5.) Repeat for as many reps and duration as desired.'
    ),
    (
        'Jackknife Sit-Up',
        'Core',
        'Strength',
        'Body Only',
        '1.) Start by lying on your back with your arms by your side.  2.) Do a sit up while at the same time bringing your legs also to your chest.3.) Try to keep your hands towards the ground.4.) Extend your self flat on the ground.5.) Repeat for the desired amount of reps.'
    ),
    (
        'Janda Sit-Up',
        'Core',
        'Strength',
        'Body Only',
        '1.) To begin the exercise, start your body off in the basic sit-up position; feet flat on the floor and arms crossed over your chest.2.) Begin your ascent by tightly squeezing your glutes and hamstrings, inhaling on the way up with a slow 4 count until you have reached full sit-up position. 3.) Upon this final position exhale slowly.4.) Return back to the starting position, inhaling on the way down.5.) Repeat this exercise for as many repetitions as needed.'
    ),
    (
        'Jump Rope',
        'Cardio,Upper Legs,Lower Legs',
        'Cardio',
        'Others',
        'Jumping rope is a great cardio exercise that helps burn a significant amount of calories through repeated jumping motion keeping the body in motion.This exercise helps condition the body for strenuous activity along with increasing endurance, stamina, building strength in the leg muscles and core, and loosening up for other activities.'
    ),
    (
        'Jump Squat',
        'Upper Legs,Lower Legs,Glutes',
        'Strength',
        'Body Only',
        '1.) To begin this exercise; start off by crossing your arms over your chest and keeping your body standing straight up.2.) Then squat down as in a normal full squat bending at your knees until your thighs are parallel with the floor.3.) When you reach the full squat position, use the force from your heels to push up and jump straight into the air as high as possible.4.) As soon as you touch the floor, immediately repeat the exercise once again.5.) Repeat this exercise for as many repetitions as needed'
    ),
    (
        'Kettlebell Advanced Windmill',
        'Core,Shoulders,Glutes',
        'Strength',
        'Kettlebell',
        '1.) Take the kettlebell and clean press it overhead.2.) With the kettlebell in place overhead, push your glutes into the direction that the kettlebell is located on. 3.) The opposite hand should be kept behind your back as your turn your feet from the kettlebell.4.) Keep your body as low as you can go to stretch the abdominals and kettlebell.5.) Hold the position for a few seconds, stretching out the muscles, then return to starting position.'
    ),
    (
        'Kettlebell Alternating Floor Press',
        'Chest',
        'Strength',
        'Kettlebell',
        '1.) To begin this exercise; start off with your back flat on the floor with kettlebells in each hand next to your shoulders.2.) Take one of the kettlebells and place it upon your chest and the other facing forward.3.) Push both kettlebells above your chest, the lower one kettlebell to your chest and return it back to the starting position followed by alternating the exercise with the other arm.4.) Repeat this exercise for as many repetitions as needed.'
    ),
    (
        'Kettlebell Alternating Hang Clean',
        'Shoulders,Lower Legs,Back',
        'Strength',
        'Kettlebell',
        '1.) To begin this exercise; start off by taking two kettlebells and placing them in front of your feet and pushing your glutes out back.2.) Then clean press one the kettlebell in your right arm to your shoulder and keep the other kettlebell in a hanging position.3.) Return the right kettlebell back to the hanging position and repeat the exercise with the opposite hand.4.) Repeat this exercise for as many repetitions as needed.'
    ),
    (
        'Kettlebell Alternating Hang Clean',
        'Shoulders,Back',
        'Strength',
        'Kettlebell',
        '1.) To begin this exercise; start off by taking two kettlebells and placing them in front of your feet and pushing your glutes out back.2.) Then clean press one the kettlebells in your right arm to your shoulder and keep the other kettlebell in a hanging position.3.) Return the right kettlebell back to the hanging position and while in this motion drive the left kettlebell up.4.) Repeat this exercise for as many repetitions as needed.'
    ),
    (
        'Kettlebell Alternating Press',
        'Shoulders,Triceps',
        'Strength',
        'Kettlebell',
        '1.) To begin this exercise; start off by clean pressing two kettlebells to your shoulders.2.) Take one of the kettlebells and overhead press it, then return it back down to the starting position. 3.) On the return down immediately press the other kettlebell overhead.4.) Return back to the starting position.5.) Repeat this exercise for as many repetitions as needed.'
    ),
    (
        'Kettlebell Alternating Row',
        'Back,Biceps',
        'Strength',
        'Kettlebell',
        '1.) To begin this exercise; start off by holding onto two kettlebells and aligning them in front of your feet, keeping your knees bent and pushing your glutes out.2.) Then take one of the kettlebells off of the floor and pull back towards your chest using your shoulder blades leaving the other in front of your feet. 3.) Hold in this position for a few seconds then return back to the starting position and repeat with the other arm.4.) Repeat this exercise for as many repetitions as needed.'
    ),
    (
        'Kettlebell Alternating Shoulder Press',
        'Shoulders,Triceps',
        'Strength',
        'Kettlebell',
        'Steps :1.) To begin this exercise; start off by taking two kettlebells and clean pressing them to your shoulders keeping your palms inward.2.) Then press the kettlebell in your right arm overhead keeping your palms facing outward holding onto the position for a few seconds.3.) Return back to the starting clean pressed position.4.) Repeat this exercise for as many repetitions as needed.'
    ),
    (
        'Kettlebell Arnold Press',
        'Shoulders,Triceps',
        'Strength',
        'Kettlebell',
        '1.) To begin this exercise; start off by clean pressing a kettlebell to your shoulder with your palms facing inward towards your head.2.) Press the kettlebell out and thrust overhead.3.) Return back to the starting position.4.) Repeat this exercise for as many repetitions as needed'
    ),
    (
        'Kettlebell Bent Press',
        'Core,Glutes,Back',
        'Strength',
        'Kettlebell',
        '1.) Kettlebell clean to the shoulder position.2.) Follow this movement by leaning your body to the opposite side of the kettlebell with your free hand touching the ground. 3.) Keep the kettlebell vertical throughout the entire motion.4.) Return back to the starting position with the kettlebell above your head, followed by placing the kettlebell back to the shoulder position. 5.) Repeat this motion and workout for the amount of repetitions needed.'
    ),
    (
        'Kettlebell Clean',
        'Shoulders',
        'Strength',
        'Kettlebell',
        '1.) To begin this exercise; start off by taking a kettlebell in each hand and clean pressing them to your shoulders.2.) Perform a squat and dip your body at the knees keeping your chest and back straight.3.) As you perform this movement, use your momentum to thrust the kettlebells overhead.4.) Hold onto this position for a few seconds then return back to the starting point with the kettlebells clean pressed at the shoulder.5.) Repeat this exercise for as many repetitions as needed'
    ),
    (
        'Kettlebell Dead Clean',
        'Upper Legs,Back,Glutes',
        'Strength',
        'Kettlebell',
        '1.) To begin this exercise; start off by taking a kettlebell in one arm and bending over by your knees and pushing your glutes out with the kettlebell resting on the floor between your legs.2.) From the bent position, clean press the kettlebell to your shoulder and hold for a few seconds.3.) Return back to the starting position.4.) Repeat this exercise for as many repetitions as needed'
    ),
    (
        'Kettlebell Double Windmill',
        'Core,Shoulders,Glutes',
        'Strength',
        'Kettlebell',
        '1.) To begin the exercise, take one kettlebell and place it next to your starting foot followed by clean pressing the opposite kettlebell overhead with the pressed arm palms out.2.) With the kettlebell pressed overhead and locked, press your glutes out towards the pressed kettlebell.3.) With the following arm, bend at the hip to the floor and touch it with the alternate kettlebell.4.) Hold this position for a few seconds, then, reverse to the starting position.5.) Repeat this exercise for as many repetitions as needed then repeat the steps with the alternating arms.'
    ),
    (
        'Kettlebell Figure Eight',
        'Core,Shoulders,Upper Legs',
        'Strength',
        'Kettlebell',
        '1.) To begin this exercise, take one kettlebell and place it between your legs, bending over and pressing your glutes out, keeping your back flat.2.) Take the kettlebell and pass it between the legs to your other hand that is behind the legs. 3.) Repeat this motion with a figure eight motion.4.) Repeat this exercise for as many repetitions as needed. 5.) You can also alternate the direction of which the kettlebells are passed between the legs.'
    ),
    (
        'Kettlebell Floor Press',
        'Chest,Shoulders,Triceps',
        'Strength',
        'Kettlebell',
        'Steps :1.) Start by laying on the floor on your side with a kettlebell in one hand resting upon your chest, one leg stretched out in front of you over your other leg extended behind you.2.) Slowly press the kettlebell into a locked out position over your chest then slowly lower the weight until your elbow touches the ground still keeping the kettlebell elevated.3.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Kettlebell Front Squat',
        'Upper Legs,Glutes,Lower Legs',
        'Strength',
        'Kettlebell',
        '1.) To begin this exercise; start off by clean pressing two kettlebells to your shoulders.2.) Then squat down as low as you can as in a normal full squat and hold down for a few seconds when you reach the bottom.3.) Return back to the starting position.4.) Repeat this exercise for as many repetitions as needed.'
    ),
    (
        'Kettlebell Goblet Squat',
        'Upper Legs,Shoulders,Glutes',
        'Strength',
        'Kettlebell',
        'Steps :1.) To begin this exercise; start off by holding a kettlebell clean to your chest just below your chin.2.) Then squat down holding the kettlebell in position until your hamstrings are on your calves holding on to the position for a few seconds.3.) Return back to the starting position4.) Repeat this exercise for as many repetitions as needed'
    ),
    (
        'Kettlebell Hang Clean',
        'Upper Legs,Shoulders,Glutes',
        'Strength',
        'Kettlebell',
        '1.) To begin this exercise; start off by taking a kettlebell and placing it between your legs, bending at your knees and push your glutes back.2.) From the bent position, clean the kettlebell to your shoulder.3.) Return back to the starting position.4.) Repeat this exercise for as many repetitions as needed.'
    ),
    (
        'Kettlebell Hang Clean',
        'Forearms,Shoulders,Biceps',
        'Strength',
        'Kettlebell',
        '1.) To begin this exercise; take a kettlebell in one hand and stand upright with the kettlebell next to your side.2.) Take the kettlebell and swing it back then raise it to shoulder level.3.) Repeat this exercise for as many repetitions as needed.'
    ),
    (
        'Kettlebell Jerk',
        'Shoulders,Lower Legs,Triceps',
        'Strength',
        'Kettlebell',
        '1.) To begin this exercise; start off by taking a kettlebell in each hand.2.) Clean press the kettlebells to shoulder level and hold onto this position.3.) Push your body forward by bending at your knees keeping your back and chest straight keeping your front foot pressed to the floor and the back rested upon the knee.4.) Overhead press the kettlebells in a thrusting motion as you bring your body to the floor. 5.) Hold onto this position for a few seconds squeezing with your shoulders.6.) Return back to a standing position.7.) Repeat this exercise for as many repetitions as needed.'
    ),
    (
        'Kettlebell Jerk',
        'Shoulders,Upper Legs,Triceps',
        'Strength',
        'Kettlebell',
        '1.) To begin this exercise; start off by taking a kettlebell in both hands and clean pressing them to your shoulder.2.) Perform a squat and dip your body at the knees keeping your chest and back straight. 3.) As you perform this movement, use your momentum to thrust the kettlebells overhead.4.) Hold onto this position for a few seconds then return back to the starting point with the kettlebells clean pressed at the shoulder.5.) Repeat this exercise for as many repetitions as needed.'
    ),
    (
        'Kettlebell Leg Pass',
        'Core,Shoulders,Glutes',
        'Strength',
        'Kettlebell',
        '1.) To begin the exercise, take one kettlebell and place them between your legs, bending over and pressing your glutes out, and keeping your back flat.2.) Take the kettlebell and pass it between your legs to your other hand behind the legs. 3.) Make sure that you are passing the kettlebell only behind your legs. 4.) Repeat this motion with a “W” returning the kettlebell to the front with each pass through.5.) Repeat this exercise for as many repetitions as needed. 6.) You can also alternate the direction of which the kettlebells are passed between the legs.'
    ),
    (
        'Kettlebell Military Press',
        'Shoulders,Triceps',
        'Strength',
        'Kettlebell',
        '1.) To begin this exercise; start off by clean pressing kettlebells to your shoulder with your palms facing inward towards your face.2.) Then press the kettlebells up and out until they overhead.3.) Return the kettlebells back to the inward shoulder position.4.) Repeat this exercise for as many repetitions as needed'
    ),
    (
        'Kettlebell One-Arm Clean',
        'Upper Legs,Shoulders,Glutes',
        'Strength',
        'Kettlebell',
        '1.) To begin this exercise; start off by placing one kettlebell between your feet and bend down at your knees pushing your glutes out.2.) Take the kettlebell and clean press it to your shoulders.3.) Return back to the starting position.4.) Repeat this exercise for as many repetitions as needed'
    ),
    (
        'Kettlebell One-Arm Clean and Jerk',
        'Shoulders',
        'Strength',
        'Kettlebell',
        'Steps :1.) To begin this exercise; start off by taking a kettlebell in one hand and clean pressing it to your shoulder.2.) Perform a squat and dip your body at the knees keeping your chest and back straight. 3.) As you perform this movement, use your momentum to thrust the kettlebell overhead.4.) Hold onto this position for a few seconds then return back to the starting point with the kettlebell clean pressed at the shoulder.5.) Repeat this exercise for as many repetitions as needed'
    ),
    (
        'Kettlebell One-Arm Floor Press',
        'Chest,Triceps,Shoulders',
        'Strength',
        'Kettlebell',
        '1.) To begin this exercise; start off by lying back flat on the floor with a kettlebell for a one-arm press. 2.) Keep one of the legs that is on the same side of the kettlebell being pressed.3.) Push the kettlebell above your body and extend the elbow.4.) Return back to the starting position.5.) Repeat this exercise for as many repetitions as needed.'
    ),
    (
        'Kettlebell One-Arm Floor Press',
        'Shoulders,Chest',
        'Strength',
        'Kettlebell',
        'Steps :1.) Start by lying on the floor with a kettlebell in one hand and your palm facing up towards the ceiling.2.) Then slowly press the kettlebell straight up rotating your wrist and then hold for a count.3.) Return back to the starting position and repeat for as many reps and sets as desired.'
    ),
    (
        'Kettlebell One-Arm Floor Press',
        'Chest,Triceps',
        'Strength',
        'Kettlebell',
        'Steps :1.) To begin this exercise; start off by lying back flat on the floor holding a kettlebell in one hand.2.) Push the kettlebell up above your chest towards the ceiling.3.) Then return the kettlebell back down to the starting position.4.) Repeat this exercise for as many repetitions as needed.'
    ),
    (
        'Kettlebell One-Arm Jerk',
        'Shoulders,Upper Legs,Triceps',
        'Strength',
        'Kettlebell',
        'Steps :1.) To begin  this exercise; start off by taking a kettlebell in one hand and clean pressing it to your shoulder.2.) Perform a squat and dip your body at the knees keeping your chest and back straight. 3.) As you perform this movement, use your momentum to thrust the kettlebell overhead.4.) Hold onto this position for a few seconds then return back to the starting point with the kettlebell clean pressed at the shoulder.5.) Repeat this exercise for as many repetitions as needed.'
    ),
    (
        'Kettlebell One-Arm Military Press',
        'Shoulders,Triceps',
        'Strength',
        'Kettlebell',
        '1.) To begin this exercise; start off by clean pressing a kettlebell to your shoulder with your palms facing inward towards your face.2.) Then press the kettlebell up and out until it is overhead.3.) Return the kettlebell back to the inward shoulder position.4.) Repeat this exercise for as many repetitions as needed'
    ),
    (
        'Kettlebell One-Arm Overhead Squat',
        'Upper Legs,Shoulders,Glutes',
        'Strength',
        'Kettlebell',
        '1.) To begin this exercise; start off by clean pressing a kettlebell with one arm and then press the weight overhead.2.) Then with the kettlebell pressed overhead, flex and bend your knees and lower your body towards the floor and pause when you get close to the bottom, holding for a few seconds.3.) Return back to the starting position.4.) Repeat this exercise for as many repetitions as needed'
    ),
    (
        'Kettlebell One-Arm Palm Clean',
        'Upper Legs,Shoulders,Glutes',
        'Strength',
        'Kettlebell',
        'Steps :1.) To begin this exercise; start off by placing one kettlebell between your feet and bend down at your knees pushing your glutes out. 2.) Take the kettlebell by the handle and raise it quickly so that it flips and the ball lands in the palm of your hand.3.) Then throw the kettlebell back out and catch it with the handle in front of you and return it back to the floor.4.) Return back to the starting position.5.) Repeat this exercise for as many repetitions as needed'
    ),
    (
        'Kettlebell One-Arm Para Press',
        'Shoulders,Triceps',
        'Strength',
        'Kettlebell',
        '1.) To begin this exercise; start off by clean pressing a kettlebell to your shoulder with your palms facing outward in front of you.2.) Take the kettlebell and press it up until it is in the overhead position.3.) Return the kettlebell back to the shoulder press.4.) Repeat this exercise for as many repetitions as needed.'
    ),
    (
        'Kettlebell One-Arm Push Press',
        'Shoulders,Triceps',
        'Strength',
        'Kettlebell',
        '1.) To begin this exercise; start off by clean pressing a kettlebell to your shoulder with your palms facing outward in front of you.2.) After lower your body by bending at the knees and keeping your chest and back straight.3.) Push through your heels and lower legs to thrust the kettlebell overhead and your body upward keeping your feet firm on the floor.4.) Return back to the starting position.5.) Repeat this exercise for as many repetitions as needed.'
    ),
    (
        'Kettlebell One-Arm Row',
        'Back,Biceps',
        'Strength',
        'Kettlebell',
        '1.) To begin this exercise; start off with keeping a kettlebell right in front of you, bending your knees and pushing your glutes out.2.) Take the kettlebell and pull it up towards your stomach using both your shoulders and back. 3.) As you reach your torso, squeeze your back tightly and hold for a few seconds.4.) Return back to the starting position.5.) Repeat this exercise for as many repetitions as needed.'
    ),
    (
        'Kettlebell One-Arm Snatch',
        'Shoulders,Triceps,Back',
        'Strength',
        'Kettlebell',
        '1.) To begin this exercise; start off by placing a kettlebell in front of your feet and bending down at your knees pushing your glutes out.2.) Take the kettlebell and swing it between your legs and then with the momentum of the swing, push your hips and knees up allowing the kettlebell to be overhead pressed. 3.) Hold this position for a few seconds.4.) Return back to the starting position.4.) Repeat this exercise for as many repetitions as needed.'
    ),
    (
        'Kettlebell One-Arm Split Jerk',
        'Shoulders,Triceps,Glutes',
        'Strength',
        'Kettlebell',
        '1.) To begin this exercise; start off by taking a kettlebell in one hand and clean pressing it to your shoulder with palms facing out in front of you.2.) Bend down at your knees and keep your chest and back straight.3.) With your momentum, thrust the leg on the same side of the kettlebell back so that you are resting upon your heel and keep the front leg still bent with weight upon that leg. 4.) As you shift your legs, thrust the kettlebell in an overhead press.5.) Hold onto this position for a few seconds and then return back to the starting point.6.) Repeat this exercise for as many repetitions as needed.'
    ),
    (
        'Kettlebell One-Arm Split Snatch',
        'Shoulders,Upper Legs,Glutes',
        'Strength',
        'Kettlebell',
        '1.) To begin this exercise; start off by taking a kettlebell in one hand and placing it between your legs.2.) Bend at your knees keeping your back and chest straight.3.) Then push through with your hips and raise the kettlebell overhead.4.) With the kettlebell pressed overhead, shift your body into a lunge position so that one leg is forward with knee bent and the other backwards to maintain the weight of the kettlebell.5.) Return back to the starting position.6.) Repeat this exercise for as many repetitions as needed.'
    ),
    (
        'Kettlebell One-Arm Swing',
        'Upper Legs,Shoulders,Glutes',
        'Strength',
        'Kettlebell',
        '1.) To begin this exercise; start off by placing one kettlebell between your feet and bend down at your knees pushing your glutes out.2.) Take the kettlebell and swing it between your legs and then use the force to drive the kettlebell out and in front of your chest.3.) Return back to the starting position.4.) Repeat this exercise for as many repetitions as needed'
    ),
    (
        'Kettlebell Open Palm Clean',
        'Upper Legs,Back,Glutes',
        'Strength',
        'Kettlebell',
        'Steps :1.) To begin this exercise; start off by placing one kettlebell between your feet and bend down at your knees pushing your glutes out.2.) Take the kettlebell by the handle and raise it quickly so that it flips and the ball lands in the palms of your hand.3.) Then throw the kettlebell back out and catch it with the handle in front of you and return it back to the floor.4.) Return back to the starting position.5.) Repeat this exercise for as many repetitions as needed.'
    ),
    (
        'Kettlebell Pistol Squat',
        'Upper Legs,Shoulders,Glutes',
        'Strength',
        'Kettlebell',
        '1.) To begin this exercise; start off by picking up a kettlebell with two hands and holding it against your chest right below your neck.2.) Take one leg and hold it off of the floor and with the other leg begin to squat down and bend at the knee.3.) While squatting down hold the kettlebell in front of your chest and hold the position when you get close to the ground.4.) Using the force from your heel push yourself back up.5.) Return back to the starting position.6.) Repeat this exercise for as many repetitions as needed'
    ),
    (
        'Kettlebell Push Press',
        'Shoulders,Lower Legs,Triceps',
        'Strength',
        'Kettlebell',
        '1.) To begin this exercise; start off by clean pressing two kettlebells to your shoulders.2.) Bend slightly at the knees and the push up using your heels to drive the kettlebells above your head.3.) Hold for a few seconds then return back to the starting position.4.) Repeat this exercise for as many repetitions as needed.'
    ),
    (
        'Kettlebell Push-Up',
        'Chest,Triceps,Shoulders',
        'Strength',
        'Kettlebell',
        '1.) To begin this exercise; take a kettlebell and place it on the floor and get into a pushup position with one hand holding onto the kettlebell and one on the ground.2.) Then lower yourself to the floor without touching the ground as in a normal push-up and return back to the starting position.3.) Switch sides quickly performing the same routine.4.) Repeat this exercise for as many repetitions as needed.'
    ),
    (
        'Kettlebell Renegade Row',
        'Back,Chest,Core',
        'Strength',
        'Kettlebell',
        '1.) To begin this exercise; take two kettlebells and place them on the floor moving yourself into a standard push-up position keeping your body extended out.2.) Then use your weight and push one of the kettlebells towards the floor and pull the opposite towards your chest using your shoulders.3.) Return the kettlebell back towards the floor and repeat the exercise with the opposite hand.4.) Repeat this exercise for as many repetitions as needed.'
    ),
    (
        'Kettlebell Row',
        'Back,Biceps',
        'Strength',
        'Kettlebell',
        'Steps :1.) To begin this exercise; start off with keeping two kettlebell right in front of you, bending your knees and pushing your glutes out.2.) Take both of the kettlebells and pull them up towards your stomach using both your shoulders and back. 3.) As you reach your torso, squeeze your back tightly and hold for a few seconds.4.) Return back to the starting position.5.) Repeat this exercise for as many repetitions as needed.'
    ),
    (
        'Kettlebell Seated Press',
        'Shoulders,Triceps',
        'Strength',
        'Kettlebell',
        '1.) To begin this exercise; start off by sitting on the floor and spreading your legs out to each side.2.) Clean press one kettlebell to your shoulder then press it up using the momentum from your shoulders until its overhead.3.) Return back to the starting position.4.) Repeat this exercise for as many repetitions as needed and switch sides.'
    ),
    (
        'Kettlebell Single-Leg Deadlift',
        'Upper Legs,Glutes,Back',
        'Strength',
        'Kettlebell',
        '1.) To begin this exercise; start off by holding a kettlebell in on hand and then stand on one leg as the same as the hand that holds the kettlebell.2.) From that position perform a stiff legged deadlift by bending at the hip and pushing your alternate leg straight out behind you.3.) Lower the kettlebell until it touches the floor and hold for a few seconds.4.) Return back to the starting position.5.) Repeat this exercise for as many repetitions as needed'
    ),
    (
        'Kettlebell Snatch',
        'Shoulders,Upper Legs,Glutes',
        'Strength',
        'Kettlebell',
        '1.) To begin this exercise; start off by holding two kettlebells at knee level.2.) Bend slightly at your knees and swing the kettlebells between your legs then drive up with your torso until they are overhead pressed.3.) Hold onto this position for a few seconds then return back to the starting point.4.) Repeat this exercise for as many repetitions as needed'
    ),
    (
        'Kettlebell Sumo High Pull',
        'Shoulders,Lower Legs,Upper Legs',
        'Strength',
        'Kettlebell',
        'Steps :1.) To begin this exercise; start off by taking a kettlebell and keeping it in between your legs. 2.) Bend down as you would in a normal squat position but lower until you are in a sumo stance.3.) Keeping your back and chest straight while bending your knees, pick up the kettlebell and extend your hips up while pulling the kettlebell upward. 4.) Raise your elbows in the process until they are at shoulder level5.) Hold for a few seconds and return back to the starting position.6.) Repeat this exercise for as many repetitions as needed.'
    ),
    (
        'Kettlebell Thruster',
        'Shoulders,Upper Legs,Triceps',
        'Strength',
        'Kettlebell',
        '1.) To begin this exercise; start off clean pressing two kettlebells to your shoulders.2.) With the kettlebells in the pressed position, squat down using your hips and knees keeping your back straight as possible.3.) As you reach a full squat position, thrust upward using the force from your heels to overhead press both kettlebells and extending your arms straight up.4.) Return back to the starting position.5.) Repeat this exercise for as many repetitions as needed.'
    ),
    (
        'Kettlebell Turkish Get-Up Lunge',
        'Shoulders,Upper Legs,Core',
        'Strength',
        'Kettlebell',
        '1.) To begin this exercise; start off lying flat on your back on the floor with a kettlebell pressed up above your chest. 2.) Take the knee that is on the same side as the kettlebell and bend it.3.) Then use your opposite arm to help push yourself up into a lunge position and then move to resting on one knee.4.) Slowly stand up with the kettlebell still pressed up overhead then reverse back down to the starting position.5.) Repeat this exercise for as many repetitions as needed'
    ),
    (
        'Kettlebell Turkish Get-Up Squat',
        'Shoulders,Upper Legs,Triceps',
        'Strength',
        'Kettlebell',
        '1.) To begin this exercise; start off lying flat on your back on the floor with a kettlebell pressed up above your chest. 2.) Take the knee that is on the same side as the kettlebell and bend it.3.) Then use your opposite arm to help push yourself up into a squat position with your weight being assisted by the opposite hand.4.) Slowly stand up with the kettlebell still pressed up overhead then reverse back down to the starting position.5.) Repeat this exercise for as many repetitions as needed.'
    ),
    (
        'Kettlebell Windmill',
        'Core,Shoulders,Glutes',
        'Strength',
        'Kettlebell',
        '1.) Take the kettlebell and clean press it overhead.2.) With the kettlebell in place overhead, push your glutes into the direction that the kettlebell is located on. 3.) The opposite hand should be kept behind your back as your turn your feet from the kettlebell.4.) Keep your body as low as you can go to stretch the abdominals and kettlebell.5.) Hold the position for a few seconds, stretching out the muscles, then return to starting position.'
    ),
    (
        'Knee Across the Body',
        'Glutes,Lower Legs,Upper Legs',
        'Stretching',
        'Body Only',
        'Steps :1.) To begin this exercise; start off lying down flat on your back with your legs straight out and arms to their sides.2.) Take your left leg and bend it across your body so that it is over your right with the left foot on the floor. 3.) Take your left arm and hold down the right knee down in position.4.) Then place your alternate arm to the side and turn your head to the opposite direction.5.) Return back to the starting position and repeat the exercise to the alternate direction.6.) Repeat this exercise for as many repetitions as needed.'
    ),
    (
        'Knee Circles',
        'Lower Legs,Upper Legs',
        'Stretching',
        'Body Only',
        'The knee circles exercise is a simple exercise to improve flexibility in the legs and it s a great stretch.1.) Start by standing up straight with your feet a little closer than shoulder width apart.2.) Keeping your arms across your chest or on your hips, move your knees in a circular motion, paying attention to keeping your feet flat on the floor and the movement in your ankles.3.) Repeat until you feel loosened up.'
    ),
    (
        'Knee Draw In',
        'Core,Back,Glutes',
        'Strength',
        'Body Only',
        'Steps :1.) Start by kneeling on your hands, assuming a neutral position.2.) While maintaining this position, draw up on the abdomen and keeping your back and spine completely still.3.) Hold this position for 15 to 30 seconds and repeat for as many reps and sets as possible.'
    ),
    (
        'Knee to Chest (Supine)',
        'Glutes,Lower Legs,Upper Legs',
        'Stretching',
        'Body Only',
        '1.) To begin this exercise; start off positioned on your your back with your knees bent as in a standard sit-up position.2.) Push your right leg out and straight followed by taking your left knee and pulling it tightly to your chest bringing the knee as close as you can to your head.3.) Repeat this exercise for as many repetitions as needed.'
    ),
    (
        'Knee to Chest to Leg Raise',
        'Core,Glutes',
        'Strength',
        'Body Only',
        '1.) Start by laying on the floor in a supine position with your arms extended out to your sides and bring your knees to a 90-degree angle above your body with a slight bend in the knees.2.) After getting into position extend both of your legs out in front of you at the same time, squeezing your abs and hold for a few seconds.3.) Return your legs back to the starting position but rather than stopping bring your legs to your chest and hold for a few seconds.4.) Return back to the starting position and repeat for as many reps and sets as desired.'
    ),
    (
        'Knee Tuck Jump',
        'Upper Legs,Glutes,Lower Legs',
        'Strength',
        'Body Only',
        'Steps :1.) Start by standing up straight with your feet shoulder width apart and your hands at your sides.2.) Slightly bend your knees and extend your hands out in front of you, hold them interlocked at your chest.3.) Then quickly dip down and forcefully push upward in a jump and pull your knees up towards your chest in attempts to touch the palms of your hands.4.) Land back down on the ground by extending your legs down, absorbing the impact and having your knees bend slightly.5.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Kneeling Back Stretch',
        'Upper Legs',
        'Stretching',
        'Body Only',
        'Steps :1.) Start by kneeling on the floor placing your hands on your heels.2.) Slowly lift your glutes off of your heels and extend up and forward.3.) While performing this motion, bring your head back and look up at the ceiling while arching your back.4.) Hold this position for 15 to 30 seconds then return back to the starting position.5.) Repeat for as many reps, sets and however long you desire.'
    ),
    (
        'Kneeling Forearm Stretch',
        'Forearms',
        'Stretching',
        'Body Only',
        '1.) To begin this exercise; start your body off in a kneeling position with your palms flat facing forward.2.) After you have gotten into position, lean back keeping your palms on the floor until you feel a stretch in your forearms. 3.) Hold this position for up to 25-seconds and then return back.4.) Repeat this exercise for as many repetitions as needed.'
    ),
    (
        'Kneeling Hip Extension',
        'Upper Legs',
        'Stretching',
        'Body Only',
        'Steps :1.) Begin in a quadruped position on an exercise mat with your head looking forward, knees creating a 90-degree angle and hands shoulder width apart.2.) Take one leg, extend it up behind you, while straightening out your knee and hip.3.) Repeat for as many sets and repetitions as desired.'
    ),
    (
        'Kneeling Hip Flexor',
        'Upper Legs',
        'Stretching',
        'Body Only',
        'Steps :1.) Start by kneeling on a mat bringing one of your knees up so that the bottom of your foot is rested upon the floor the other leg is extended out behind you.2.) Slowly shift your weight forward onto the bent leg until you feel a stretch in your quads.3.) Hold for 15 to 30 seconds and then return to the starting position.4.) Repeat for as many reps, sets and however long you desire.'
    ),
    (
        'Kneeling Hip Flexor',
        'Upper Legs,Glutes,Core',
        'Stretching',
        'Body Only',
        '1.) Begin by kneeling on the ground or mat keeping one knee on the floor and the opposite knee bent and foot flat on the floor.2.) Tighten up on your glutes and then do a pelvic tilt rocking on your back leg and hold for 15 to 30 seconds.3.) Switch legs and repeat.'
    ),
    (
        'Kneeling Lat Stretch',
        'Back,Core,Glutes',
        'Stretching',
        'Body Only',
        '1.) Start off in a kneeling position on the ground or on a mat.2.) Take one arm and reach out with  your palm turned face up and start to rotate the shoulder. 3.) Push up on your lower back until you feel a stretch.4.) Hold onto this position for 15 to 30 seconds and then repeat on the opposite arm.'
    ),
    (
        'Kneeling Side Bend',
        'Core,Back,Shoulders',
        'Stretching',
        'Body Only',
        '1.) Start on your knees with your glutes off of your heels, keeping your spine erect in the process.2.) Keeping your hips stabilized reach down to your right with your right hand coming to a side bend. 3.) Take the opposite arm and raise it over your head and reach out with your fingertips.4.) Hold this position for 3 to 5 breaths and repeat on the opposite side.'
    ),
    (
        'Knees to Chest Hug',
        'Back,Core,Glutes',
        'Stretching',
        'Body Only',
        '1.) Start by laying with your back on a mat and knees pulled up towards your chest.2.) Then place your arms underneath your knees and pull them towards your shoulders, feeling a stretch in your lower back and glutes.3.) Hold this position for 15 to 30 seconds then return back to the starting position.4.) Repeat for as many reps and duration as desired.'
    ),
    (
        'Lateral Stretch',
        'Core,Back,Shoulders',
        'Stretching',
        'Body Only',
        'Steps :1.) Start by standing up straight with your feet shoulder width apart, knees slightly bent and placing your right hand on your hip and the other placed behind your head.2.) Slowly raise the left arm in a vertical line and incline your torso to the right, feeling a stretch and tension in your abdominals.3.) Return back to the starting position and repeat for as many reps and sets desired.'
    ),
    (
        'Leg Lift',
        'Glutes,Upper Legs',
        'Strength',
        'Body Only',
        'The leg lift exercise is a great workout to stretch and strengthen your glute and hamstring muscles.Steps :1.) Start off either using a post or tall weight bench for balance stand straight with your abs drawn in.2.) Raise one leg off of the ground and extend it behind you while standing and stabilizing on the other leg.3.) Slowly lower the leg and raise it again while flexing the glutes.4.) Repeat with your other leg.'
    ),
    (
        'Leg Pull-In',
        'Core',
        'Strength',
        'Body Only',
        '1.) To begin the exercise, have your back flat on the floor and legs extended with palms down by your side.2.) Take your knees and curl up, pulling your thighs toward your chest as you exhale. 3.) Once your knees have hit the chest level, squeeze your abs and hold for a few seconds.4.) Release your contraction and return back to the starting position inhaling down.5.) Repeat this exercise for as many repetitions as needed.'
    ),
    (
        'Leg Raise',
        'Core',
        'Strength',
        'Body Only',
        'The leg raise exercise helps work and strengthen your lower abs which are typically a hard muscle to target.1.) Start off either lying on a flat bench or lying down on the floor, keeping your hands under your hips to support your back as this will be the starting position of the exercise.2.) Once in position, keep your feet together and your toes pointed out, slowly raise your legs up towards the ceiling squeezing your ab muscles in the process.3.) Continue on the motion upward while squeezing your lower abs then once you reach the top position, pause and hold for a count, then slowly return back to the starting position in a controlled manner.Tips :1.) You don t have to have a large range of motion for this exercise for it to be effective.'
    ),
    (
        'Leg Raise with Hip Thrust',
        'Core',
        'Strength',
        'Bench',
        'Steps :1.) Start by laying with your back flat on a bench, head rested upon the one end and holding onto the bench below your head to stabilize your body.2.) Keeping your feet and knees together, point your legs straight out in front of you in a plank position, then slowly pull both legs up towards the ceiling as high as possible and lift your hips up off of the bench until you feel a stretch in your abs.3.) Then return your legs back to the starting position.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Leg Slide',
        'Core',
        'Strength',
        'Body Only',
        'Steps :1.) Start by laying on your back on a mat with your legs bent and arms extended out on the floor to your sides.2.) Once in position, squeeze on your abs and straighten one leg out until it is right above the floor with your heel.3.) Hold this position for a few seconds, feeling the squeeze in your lower abs and then return back to the starting position.4.) Repeat for as many reps and sets desired.'
    ),
    (
        'Leg Slide',
        'Core,Glutes,Upper Legs',
        'Strength',
        'Body Only',
        'Steps :1.) Start by laying flat on your back with your arms at your sides.2.) Lift your legs and bend at the knees so that that they are in a 90-degree angle.3.) Once in position slowly slide your legs forward and hold this position for a few seconds, return back to the starting position and repeat.'
    ),
    (
        'Leg Slide (Supine)',
        'Core,Back,Glutes',
        'Strength',
        'Body Only',
        'Steps :1.) Begin by lying on your back, feet elevated in a 90-degree angle with your arms at sides with palms up.2.) While keeping your hands in place, slowly slide your legs forward so that they are extended out in front of you and you feel a stretch and tension in your lower abdominals.3.) Return back to the starting position and repeat for as many sets and reps as possible.'
    ),
    (
        'Leg Swing',
        'Upper Legs',
        'Stretching',
        'Body Only',
        'Steps :1.) Start by standing upright next to a chair or a support holding onto it with one hand while maintaining your balance.2.) Then swing your leg forward, keeping your leg straight but slightly bent at the knee.3.) Continue with a back downward swing bringing your leg back as far as you can.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Leverage Chest Press',
        'Chest,Shoulders,Triceps',
        'Strength',
        'Machine - Strength',
        'Steps :1.) Start by loading the necessary amount of weight onto the leverage machine, adjusting the seat to where the handles are just beneath your pecs.2.) Keep your head and chest up, press the handles forward extending through your elbows until you feel a tension in your chest.3.) Hold for a count then return back to the starting position.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Leverage Decline Chest Press',
        'Chest,Shoulders,Triceps',
        'Strength',
        'Machine - Strength',
        'Steps :1.) Start by loading the necessary amount of weight onto the leverage machine, adjusting the seat to where the handles are just beneath your pecs.2.) Keeping your head and chest up, press the handles forward extending through your elbows until you feel a tension in your chest.3.) Hold for a count then return back to the starting position.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Leverage Incline Chest Press',
        'Chest,Shoulders,Triceps',
        'Strength',
        'Machine - Strength',
        'Steps :1.) Start by loading the necessary amount of weight onto the leverage machine, adjusting the seat to where the handles are just above your pecs.2.) Keeping your head and chest up, press the handles forward extending through your elbows until you feel a tension in your chest.3.) Hold for a count then return back to the starting position.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Leverage Machine High Row',
        'Back',
        'Strength',
        'Machine - Strength',
        'Steps :1.) Start by loading weight onto the leverage machine and adjust the settings so that the handles are just above you and knee pads can comfortably keep you down.2.) Slowly pull both handles down towards your abs retracting your shoulders back as you motion downwards.3.) As soon as you reach the bottom and feel tension on your lower back, stop, squeeze your muscles and hold for a count.4.) Return back to the starting position and repeat for as many reps and sets as desired.'
    ),
    (
        'Leverage Machine Iso Row',
        'Back',
        'Strength',
        'Machine - Strength',
        'Steps: 1.) Start by loading the amount of weight that you want onto the machine and then adjusting the levels of the seat so that the handles are just at chest level.2.) Grab the handles with either a grip that is comfortable for you and will target your back muscles the best.3.) Slowly pull the handles in towards your chest, retracting your shoulders back through the elbows until you feel tension on your muscles.4.) Hold for a count then return back to the starting position.5.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Leverage Machine Shrug',
        'Back,Shoulders',
        'Strength',
        'Machine - Strength',
        'Steps :1.) Start by loading the leverage machine with the amount of weight you would like to use for this exercise and then place yourself in between the handles.2.) Grab the handles with a firm grip, then lower your body through your hips, lean forward and keep your chest up.3.) Extend your body through the floor, pushing with your hips and knees as you rise to a standing position, making sure to keep your arms straight through the motion and your shoulders back.4.) Slowly raise the weight by performing shoulder shrugs and bringing them up to your ears.5.) Hold for a count then return back to the starting position.6.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Leverage Shoulder Press',
        'Shoulders,Triceps',
        'Strength',
        'Machine - Strength',
        'Steps :1.) Start by loading the amount of weight that you would like to use on the leverage machine and adjusting the seat so that the handles are near the top of your shoulders, keeping your head and chest straight up.2.) Slowly press the handles upward extending through the elbows until you feel a stretch on your shoulders and hold for a count.3.) Return back to the starting position but do not touch the stops until your set is complete.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Locust Pose',
        'Core,Back',
        'Stretching',
        'Body Only',
        '1.) Start off by lying face down with your forehead on the floor, your arms at your sides and feet straight together.2.) Lift your legs up in the air while keeping your ankles together and knees off of the floor.3.) Make sure that your hips are still positioned on the ground then lift your arms, head and chest up.4.) Take your hands and reach back towards your toes with your fingertips.5.) Hold this position for a few seconds, return back to the starting position and repeat the pose.'
    ),
    (
        'Long Jump',
        'Upper Legs,Glutes,Lower Legs',
        'Strength',
        'Body Only',
        'Steps :1.) Begin by standing up straight with enough space and distance around you to perform this exercise.2.) Slowly bend your knees, extending your body forward, then quickly and forcefully use a big arm swing to create momentum and jump forward with your body as far as you can.3.) While in mid air shift your legs forward so that you land with your feet in front of you.4.) Measure your distance and repeat for as many reps and sets as desired.'
    ),
    (
        'Low Back Chair Stretch',
        'Back',
        'Stretching',
        'Bench',
        'Steps :1.) Start by sitting upright in a chair with your feet planted on the floor in front of you.2.) Slowly bend to one side of your body with one arm extended over your head reaching towards the ceiling while using the hand on the bent side to grab the chair.3.) Hold this stretch for 15 to 30 seconds then return back to the starting position and repeat on the opposite side.4.) Repeat for as many reps and however long that you desire.'
    ),
    (
        'Lying Alternating Knee Raise',
        'Core',
        'Strength',
        'Body Only',
        'Steps :1.) Start by laying with your back flat on the floor, arms at your sides and legs extended out straight in front of you.2.) Slowly extend one of your knees up as far as possible to your chest, keeping the other straight, until you feel a stretch in your abs.3.) Return the knee back to the starting position and repeat with the opposite leg.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Machine Ab Crunch',
        'Core',
        'Strength',
        'Machine - Strength',
        '1.) Sit down in the machine and select a resistance that is with-in safe limits of your ability.   2.) Do a crunch in a slow controlled manner while slowly breathing out.  3.) Pause at the bottom of your crunch for 3 seconds.  4.) Return to your starting position in a slow controlled movement.'
    ),
    (
        'Machine Assisted Chin-Up',
        'Back',
        'Strength',
        'Machine - Strength',
        'Steps :1.) Start by setting up the weight that will allow your body to lower towards the floor and that you would like to perform for this exercise, making sure that the knee rests are in position for your body to rest upon.2.) Climb onto the machine and place your knees upon the rest, then once in position grab the pull-up handles above you with an underhand, palms facing toward you, grip and lift yourself up towards the ceiling.3.) Squeeze your lat and back muscles as your body comes up towards the ceiling until your shoulders are at hand level and hold for a count.4.) Return back to the starting position.5.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Machine Assisted Dip',
        'Triceps',
        'Strength',
        'Machine - Strength',
        'Steps :1.) Start by setting up the weight that you would like to perform for this exercise and making sure that the knee rests are in position for your body to rest upon.2.) Climb onto the machine and place your knees upon the rest, then once in position push down upon the handles at your sides to lower your body down towards the floor.3.) Squeeze with your triceps and hold for a count.4.) Return back to the starting position.5.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Machine Assisted Pull-Up',
        'Back',
        'Strength',
        'Machine - Strength',
        'Steps :1.) Start by setting up the weight that will allow your body to lower towards the floor and that you would like to perform for this exercise, making sure that the knee rests are in position for your body to rest upon.2.) Climb onto the machine and place your knees upon the pad, then once in position grab the pull-up handles above you and lift yourself up towards the ceiling.3.) Squeeze your lat and back muscles as your body comes up towards the ceiling until your shoulders are at hand level and hold for a count.4.) Return back to the starting position.5.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Machine Assisted Pull-Up (Hammer Grip)',
        'Back',
        'Strength',
        'Machine - Strength',
        'Steps :1.) Start by setting up the weight that will allow your body to lower towards the floor and that you would like to perform for this exercise, making sure that the knee rests are in position for your body to rest upon.2.) Climb onto the machine and place your knees upon the rest, then once in position grab the pull-up handles above you, with a neutral hammer grip, and lift yourself up towards the ceiling.3.) Squeeze your lat and back muscles as your body comes up towards the ceiling until your shoulders are at hand level and hold for a count.4.) Return back to the starting position.5.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Machine Back Extension',
        'Back',
        'Strength',
        'Machine - Strength',
        'Steps :1.) Start by positioning yourself on the back extension machine with your feet rested on the platform in front of you. 2.) Hold onto the handles at your sides and keep your back flat on the padding behind you.3.) Slowly extend your back, pushing the padding backward, feeling a stretch in your lower and upper back, squeeze and hold for a count.4.) Return back to the starting position.5.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Machine Bench Press',
        'Chest,Triceps,Shoulders',
        'Strength',
        'Machine - Strength',
        'The bench press machine exercise targets the chest muscles and offers more stability for people new to the exercise.Steps :1.) Start by adjusting a bench press machine so that when you sit at the machine, the bars are positioned at chest height.2.) Place your hands upon the bars and place your feet flat on the foot rests in front of you as this will  be your starting position.3.) Press out, by extending your arms out as far as possible, in a slow and steady motion until you feel a stretch in your tricep muscles.4.) Hold this position for a count then return back to the start.5.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Machine Bicep Curl',
        'Biceps,Forearms',
        'Strength',
        'Machine - Strength',
        'The bicep curl machine exercise uses a machine to isolate and target the bicep muscle1.) Start by adjusting the seat of the machine so your elbows are correctly aligned with the rotation axis.2.) Press your arms against the pads and keep them stationary throughout the exercise.3.) Curls your forearms until your arms are fully flexed and squeeze your bicep, isolating the muscle.4.) Hold for a count and then slowly lower your arms back to the starting position.5.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Machine Bicep Curl (Reverse Grip)',
        'Biceps',
        'Strength',
        'Machine - Strength',
        'Steps :1.) Start by sitting on a bicep curl machine that has rotating handles. 2.) Rest your arms over the padding keeping them straight and grab onto the handles with a overhand (reverse) grip.3.) Slowly raise the handles up towards your shoulders, squeezing and isolating your biceps, and hold for a count.4.) Return to the starting position.5.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Machine Calf Press',
        'Lower Legs',
        'Strength',
        'Machine - Strength',
        'Steps :1.) Start by sitting down on a leg press machine, placing the balls of your feet on the bottom of the platform in front of you with a narrow width spacing and selecting the weight you would like to perform.2.) Slowly, using your calves, push against the platform so that you move backwards, feeling a stretch in your legs and hold for a count.3.) Return back to the starting position.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Machine Calf Raise',
        'Lower Legs',
        'Strength',
        'Machine - Strength',
        'The standing calf raise exercise uses a machine to target the lower calf muscles and is used by beginners for proper form.Steps : 1.) Start by standing up straight with your toes on the footpads of the machine and adjust your shoulder so that they are rested underneath the upper pads.2.) Slowly raise up on the balls of your feet so that your heels are lifted off of the pad and hold this position for a count.3.) Return back to the starting position and repeat for as many reps and sets as desired.'
    ),
    (
        'Machine Crunch',
        'Core',
        'Strength',
        'Machine - Strength',
        'Steps :1.) Start by laying down on the ab machine and gripping the handles, getting yourself into position.2.) Squeeze with your abdominals and roll up slowly so that your shoulders elevate off of the bench and you feel a contraction in your abs.3.) Return back to the starting position and  repeat for as many sets and reps desired.'
    ),
    (
        'Machine Decline Chest Press',
        'Chest,Triceps,Shoulders',
        'Strength',
        'Machine - Strength',
        'The machine decline bench press exercise works the lower portion of the pectoral muscles and many people prefer this exercise as it offers more stability for new people to the exercise.Steps :1.) Start off by adjusting the seat of the machine so that the handles are aligned with the lower portion of your chest and your back is rested upon the resting pad, as this will be your starting position.2.) Slowly press the handles forward until your hands are fully extended and you feel a stretch in your chest muscles, making sure not to lock your elbows.3.) Hold this position for a count then return back to the starting position.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Machine Deltoid Raise',
        'Shoulders',
        'Strength',
        'Machine - Strength',
        'Steps :1.) Start by sitting on a deltoid raise machine with your feet flat on the floor in front of you, your shoulders and forearms rested underneath the padding and hands grabbing the handles in front of you.2.) Once in position slowly elevate your arms up towards the ceiling, feeling a stretch in your shoulder blades and hold for a count.3.) Return back to the starting position.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Machine Dip',
        'Triceps,Shoulders,Chest',
        'Strength',
        'Machine - Strength',
        '1.) To begin this exercise; start off sitting upon a dip machine and grabbing the handles. (Select the type of weight that you want to use)2.) The most important aspect of this exercise is to keep your elbows close to the inside as you focus more upon the triceps.3.) Push down upon the hands and squeeze tightly upon your triceps for a few seconds, then return back to the starting position.4.) Repeat this exercise for as many repetitions as needed.'
    ),
    (
        'Machine Fly',
        'Chest',
        'Strength',
        'Machine - Strength',
        '1.) Begin by sitting on a fly machine with your back flat against the pad, having a firm grip on the handles, keeping your upper arms parallel to the floor and feet flat on the ground.2.) Slowly bring the handles together squeezing your chest as you come closer together.3.) As soon as you feel tension in your chest, stop and hold the position for a count.4.) Return back to the starting position and repeat for as many reps and sets as desired.'
    ),
    (
        'Machine Fly',
        'Chest',
        'Strength',
        'Machine - Strength',
        'The butterfly machine exercise is an easy way to target your chest and inner chest muscles.1.) Start off sitting on the fly machine with your back flat against the padding and forearms up against the pads.2.) Slowly and concentrate of pushing the pads together and squeezing your chest muscles.3.) Once you reach the middle position of the motion, hold for a count, squeezing your chest muscles, then return back to the starting positionTips : 1.) Make sure that you focus on using your chest for this exercise.2.) Refrain from using your biceps or shoulders and focus on squeezing the inner part of your chest.'
    ),
    (
        'Machine Hammer Curl',
        'Biceps',
        'Strength',
        'Machine - Strength',
        'Steps :1.) Start by sitting on a bicep curl machine that has rotating handles. 2.) Rest your arms over the padding keeping them straight and grab onto the handles with a neutral (hammer) grip.3.) Slowly elevate the handles up towards your shoulders, squeezing and isolating your biceps, and hold for a count.4.) Return to the starting position.5.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Machine Hip Abduction',
        'Upper Legs',
        'Strength',
        'Machine - Strength',
        'The hip abduction exercise works the muscles of the outer thigh and strengthens the leg muscles.Steps :1.) Start by sitting on the machine and place your knees against the pads.2.) Draw your abs in and abduct or move your thighs apart against the pads.3.) Slowly return to the starting position and repeat.'
    ),
    (
        'Machine Hip Adduction',
        'Upper Legs',
        'Strength',
        'Machine - Strength',
        'The thigh adductor exercise targets and works the muscles of the inner thighsSteps :1.) Start by sitting on a hip adductor machine resting your knees against the pads.2.) Draw your abs in and adduct or move your thighs together using the pads bringing thighs together.3.) Slowly return to the starting position and repeat.'
    ),
    (
        'Machine Incline Chest Press',
        'Chest,Shoulders,Triceps',
        'Strength',
        'Machine - Strength',
        'The machine incline bench press is an exercise that focuses upon the upper portion of the pectoral muscles and is preferred by most people as it offers more stability for people new to the exercise.Steps :1.) Start off by adjusting the seat of the bench so that the handles are aligned with the upper portion of your chest, keeping your back flat on the back padding and grabbing the handles with an overhand grip, as this will be your starting position.2.) Slowly press the handles forward until your hands are fully extended and you feel a stretch in your chest muscles.3.) Hold this position for a count then slowly return back to the starting position.4.) Repeat for as many reps and sets as desired.Tips :1.) Keep your shoulders and lower back against the bench at all times during this exercise.2.) Refrain from bouncing the handles back on the machine.'
    ),
    (
        'Machine Inner Chest Press',
        'Chest',
        'Strength',
        'Machine - Strength',
        'Steps :1.) Start by sitting on a chest press machine, with your feet flat in front of you, holding the handles with a neutral hammer grip and keeping your back flat up against the padding.2.) Once in position, slowly push out the handles using your arms but squeezing with your chest as the handles are extended out in front of you.3.) Squeeze and hold for a count.4.) Return back to the starting position.5.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Machine Inverted Row',
        'Back,,',
        'Strength',
        'Machine - Strength',
        'The body row exercise is a great overall exercise for the chest, back and core muscles and you should use either a smith machine or stable weight rack to perform this exercise.1.) Start by lying under a bar so that it is aligned at mid chest level and your feet are positioned firmly on the floor in front of you.2.) While keeping your abs drawn tightly in and your back flat, use your arms and row your body up towards the bar until you start to feel a stretch in your chest.3.) Hold this position for a count then slowly return back to the start in a controlled motion.4.) Repeat for as many reps and sets as desired.Tips :1.) Make sure that the rack or the smith machine is stable before you perform the exercise.'
    ),
    (
        'Machine Inverted Row',
        'Back',
        'Strength',
        'Machine - Strength',
        'Steps :1.) Start by taking a barbell and placing it on a rack at about waist level.2.) Position yourself underneath the bar, grabbing it with a shoulder width grip and keeping your body extended straight out with heels on the ground.3.) Flex up with your elbows, pulling your chest towards the bar until you feel a stretch in your middle to lower back.4) Hold this position for a count then return back to the starting position.5.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Machine Iso Lateral High Row',
        'Back,Biceps',
        'Strength',
        'Machine - Strength',
        'Steps :1.) Start by setting up weight on a high iso lateral machine, then sit down with your feet in front of you and thighs rested underneath the padding for stability.2.) Reach up with one hand and grab one of the handles with an overhand grip as this will be your starting position.3.) Slowly lower the handle down towards your side at chest level, squeezing your back and lat muscles on the way down, and hold for a count.4.) Return back up to the starting position.5.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Machine Kneeling Leg Curl',
        'Upper Legs,Lower Legs,Glutes',
        'Strength',
        'Machine - Strength',
        'Steps :1.) Start by getting into position on a kneeling leg curl machine placing your forearms in front of you and one of your legs underneath the curling pad.2.) This will be your starting position.3.) Make sure that your upper body stays still and slowly curl the pad up towards your glutes, squeezing with your hamstrings on the way up.4.) Hold for a count then return back to the starting position.5.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Machine Landmine Row (Reverse Grip)',
        'Back,Biceps',
        'Strength',
        'Machine - Strength',
        '1.) Start by setting up a T-Bar row machine by adding the amount of weight you want to do and setting up the chest pad to your desired height.2.) Lay down on the pad with your chest right against it and feet on the rests behind you.3.) Grab onto the handles with an underhand grip and slowly elevate the bar up towards your chest, squeezing your back, and hold for a count.4.) Then return back to the starting position.5.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Machine Lat Pulldown',
        'Back',
        'Strength',
        'Machine - Strength',
        'Steps :1.) Start by sitting on a lat pull down machine, grabbing the handles with an overhand grip, keeping your knees positioned underneath the padding and feet flat on the floor.2.) Once in position, slowly pull down on the handles and bring them down towards your sides, and squeeze with your lat and back muscles.3.) Hold for a count then return back up to the starting position.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Machine Lat Pulldown (Reverse Grip)',
        'Back',
        'Strength',
        'Machine - Strength',
        'Steps :1.) Start by sitting on a lat pull down machine, grabbing the handles with an underhand reverse grip, keeping your knees positioned underneath the padding and feet flat on the floor.2.) Once in position, slowly pull down on the handles and bring them down towards your sides, squeezing with your lat and back muscles.3.) Hold for a count then return back up to the starting position.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Machine Lat Pulldown (Reverse Grip)',
        'Back,Biceps,Shoulders',
        'Strength',
        'Machine - Strength',
        'Steps :1.) Start by setting up a wide grip bar to a lat pulldown machine, then grasping it with an underhand shoulder width grip and sitting down on the machine with your knees rested underneath the pads.2.) Keeping your back straight, slowly pull the bar down towards your upper chest, squeezing your lats and hold for a count.3.) Return back to the starting position.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Machine Lateral Shoulder Raise',
        'Shoulders',
        'Strength',
        'Machine - Strength',
        'Steps :1.) Start by sitting down at the shoulder raise machine, placing your arms underneath each pad and then slowly raising your arms out to your sides.2.) As soon as your arms reach about shoulder level, hold onto this pose for a count then return back to the starting position slowly while maintaining tension on your muscles.3.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Machine Leg Curl (Prone)',
        'Upper Legs',
        'Strength',
        'Machine - Strength',
        '1.) Facing bench, stand between bench and lever pads.2.) Lie prone on bench with knees just beyond edge of bench and lower legs under lever pads. Grasp handles.3.) Raise lever pad to back of thighs by flexing knees. 4.) Lower lever pads until knees are straight.5.) Repeat for the desired amount of reps and sets.'
    ),
    (
        'Machine Leg Extension',
        'Upper Legs',
        'Strength',
        'Machine - Strength',
        'The leg extension exercise is a staple in weight lifting for building strong legs and overall body strength.1.) Begin by adjusting the seat of the leg extension bench so that your knees have a full range of motion and the footpad fits over your legs above your ankles.2.) Take hold of the machine handles, keeping your hips and back up against the bench, and slowly extend your legs until your legs are straight.3.) Hold this position for a count, then return back to the start.4.) Repeat for as many reps and sets as desired.Tips : 1.) Use controlled movements for this exercise, do not swing the weight up.2.) Refrain from locking your knees as this can result in injury.'
    ),
    (
        'Machine Leg Press',
        'Upper Legs,Lower Legs,Glutes',
        'Strength',
        'Machine - Strength',
        'The leg press exercise is a variation of leg press workouts which targets the external muscles of the legs by placing your feet closely together.1.) Start off sitting on a leg press machine with your feet on the crosspiece about 6 inces apart with your toes pointed outward.2.) Once in position, grab the handles on the sides of the machine, release the locks, slowly bend down at your knees and bring the weight as far as possible towards your chest.3.) Hold for a count and then return back to the starting position.4.) Repeat for as many reps and sets as desired.Tips : 1.) Do not lock your knees at the top as this can result in injury.'
    ),
    (
        'Machine Leg Press',
        'Upper Legs',
        'Strength',
        'Machine - Strength',
        'Steps :1.) Start by sitting down on a leg press machine, placing your feet on the platform in front of you with shoulder width spacing and selecting the weight you would like to perform.2.) Slowly, using your hamstrings and quads, push against the platform so that you move backwards, feeling a stretch in your legs and hold for a count.3.) Return back to the starting position.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Machine Leg Press (Narrow Stance)',
        'Upper Legs,Lower Legs,Glutes',
        'Strength',
        'Machine - Strength',
        '1.) To begin this exercise; start off sitting down on a leg press machine and place your legs on the platform in front of you in less than a shoulder with apart narrow stance and toes pointed out.2.) Then lower the safety bars to release the platform and push the platform up until your legs are fully extended forward.3.) Lower the platform back down towards your chest and stop when your upper legs and knees make a 90-degree angle.4.) Return back to the starting position.5.) Repeat this exercise for as many repetitions as needed'
    ),
    (
        'Machine Leg Press (Narrow Stance)',
        'Upper Legs',
        'Strength',
        'Machine - Strength',
        'Steps :1.) Start by sitting down on a leg press machine, placing your feet on the platform in front of you with a narrow width spacing and selecting the weight you would like to perform.2.) Slowly, using your hamstrings and quads, push against the platform so that you move backwards, feeling a stretch in your legs and hold for a count.3.) Return back to the starting position.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Machine Leg Press (Wide Stance)',
        'Upper Legs',
        'Strength',
        'Machine - Strength',
        'Steps :1.) Start by setting up the amount of weight that you would like to perform on a Leg Press Machine.2.) Sit down on the machine and place your legs on the rest with a wide stance and back flat on the padding behind you.3.) Release the weight off of the rack and bring it down, feeling a stretch in your quads and hamstrings until you make a 90-degree angle with your legs or as far as you can go down.4.) Hold for a count then return back to the starting position.5.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Machine Leg Press (Wide Stance)',
        'Upper Legs',
        'Strength',
        'Machine - Strength',
        'Steps :1.) Start by sitting down on a leg press machine, placing your feet on the platform in front of you with a wide width spacing and selecting the weight you would like to perform.2.) Slowly, using your hamstrings and quads, push against the platform so that you move backwards, feeling a stretch in your legs and hold for a count.3.) Return back to the starting position.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Machine One-Arm Pulldown',
        'Back',
        'Strength',
        'Machine - Strength',
        'Steps :1.) Start by sitting on an iso lateral pulldown machine with your feet flat on the floor in front of you and thighs rested underneath the padding for stability.2.) Reach up and grab one handle with an overhand grip as this will be your starting position.3.) Slowly pull down, bringing the handle to your side and squeeze with your back and lat muscles.4.) Hold for a count then return back up to the starting position.5.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Machine Reverse Fly',
        'Shoulders',
        'Strength',
        'Machine - Strength',
        'Steps :1.) Start by adjusting the handles on a fly machine so that they are fully to the rear in place for reverse flys and positioning the seat so that the handles are at shoulder level.2.) Grab the handles so that your hands are facing inwards and then pull your arms out to your sides and as far back as possible, contracting your rear deltoids.3.) Keep this motion until you feel a stretch in your shoulders then hold for a count.4.) Return back to the starting position.5.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Machine Reverse Lat Pulldown (Close Grip)',
        'Back,Biceps,Shoulders',
        'Strength',
        'Machine - Strength',
        'Steps :1.) Start by attaching a lat pulldown machine and grabbing it with a reverse grip so that your palms are facing towards you.2.) Keeping your back straight and body still, slowly pull the v-bar down till it almost hits the top of your chest, squeezing with your lats and hold for a count.3.) Return back to the starting position.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Machine Reverse T Bar Row',
        'Back',
        'Strength',
        'Machine - Strength',
        'Steps :1.) Start by setting up a T-Bar Row machine with the amount of weight that you want to use to perform this exercise.2.) Lay down with your chest flat on the pad in front of you, legs behind on the foot rests and grabbing onto the handles with an underhand reverse grip.3.) Slowly pull the bar up towards your chest, bringing the handles to your sides, squeezing with your back and lat muscles.4.) Hold for a count then return back to the starting position.5.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Machine Seated Calf Raise',
        'Lower Legs',
        'Strength',
        'Machine - Strength',
        'The seated calf raise exercise is one of the simplest and most effective calf workouts.Steps :1.) Start off sitting at a calf raise machine, putting the balls of your feet on the footpad and your thighs under the leg pad above your knees as this will be your starting position..2.) Unlock the bar and slowly raise your toes up as high as possible, feeling a stretch in your calf muscles.3.) Once you reach the top position, hold for a count then return back to the start.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Machine Seated Leg Curl',
        'Upper Legs',
        'Strength',
        'Machine - Strength',
        'The seated leg curl exercise is another option to the lying leg curls workout to help build the hamstrings.Steps :1.) Start by adjusting the machine so that the footpad is above your heels, then sit upright with your abs tightly drawn in and your legs positioned in front of you.2.) Slowly curl your legs back towards your buttock and hold for a 1-2 count.3.) Return back to the starting position and repeat for as many reps and sets as desired.Tips : 1.) Do not use momentum and resist swinging the weight or moving too quickly though the exercise.'
    ),
    (
        'Machine Seated Row',
        'Back',
        'Strength',
        'Machine - Strength',
        'Steps :1.) Start off sitting on a fixed row machine, grabbing the handles in front of you so that your arms are in a full extension and chest is up against the pad in front of you.2.) Slowly contract your back muscles moving your shoulder blades with your arms and pull back on the machine.3.) Hold as you reach a peak position and then return back to the starting position.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Machine Seated Single-Leg Calf Raise',
        'Lower Legs',
        'Strength',
        'Machine - Strength',
        'Steps :1.) Start by setting up a seated calf raise machine by loading up the amount of weight that you would like to perform for this exercise.2.) Sit down on the bench so that your left foot is on the foot rest and your right leg is extended out in front of you.3.) Take the weight up off of the rack by extended up with your leg and dropping your heel down as far as possible.4.) Then slowly lift your heel up as far as possible, squeezing with your calf and hold for a count.5.) Return back to the starting position.6) Repeat for as many reps and sets as desired.'
    ),
    (
        'Machine Seated Tricep Dip',
        'Triceps,Shoulders',
        'Strength',
        'Machine - Strength',
        'The seated tricep dip exercise uses a machine to work the tricep muscles while in a seated position.Steps :1.) Start by adjust the seat of the machine so that the handles are equal with your elbows.2.) Grasping the handles press down with equal pressure till your arms are fully extended.3.) Pause, hold for a count and then return to the starting position.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Machine Shoulder Press',
        'Shoulders,Chest,Triceps',
        'Strength',
        'Machine - Strength',
        'The shoulder press machine exercise works the shoulder muscles, mainly the deltoid muscles.1.) Start by sitting up straight with your abs kept tight, grabbing the handles or bar with both hands.2.) Once you have a hold on the handles or bar, using a smooth motion, press the bar upward extending your arms.3.) At the top position of the exercise, squeeze your shoulder muscles and hold for a count, then return back to the starting position.Tips :1.) You want to make sure that you are sitting upright and adjust the handles of the machine so that they are level with your shoulders.'
    ),
    (
        'Machine Single-Leg Calf Press',
        'Lower Legs',
        'Strength',
        'Machine - Strength',
        'Steps :1.) Start by setting up the leg press machine with the amount of weight that you would like to perform for this exercise.2.) Sit down with your back flat on the padding behind you and placing one leg on the platform in front of you.3.) Slowly lift the weight off of the rack and shift your foot down so that only the ball of your foot is rested at the very edge of the platform.4.) Extend your heel down as far as possible, feeling a stretch and squeezing your calf, hold for a count then return back to the starting position.5.) Return back to the starting position.6.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Machine Single-Leg Curl',
        'Upper Legs',
        'Strength',
        'Machine - Strength',
        'Steps :1.) Start by setting up a single leg curl machine with the amount of weight that you would like to perform for this exercise. 2.) Lay with your face down on the machine and the padding just above your ankles.3.) Squeeze your hamstring and curl the weight up with one of your legs, until you feel a stretch then hold for a count.4.) Return to the starting position.5.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Machine Single-Leg Curl',
        'Upper Legs',
        'Strength',
        'Machine - Strength',
        'Steps :1.) Sit down on leg curl machine with one of your legs rested on top of the curling pad and the other off to the side.2.) While keeping your upper body still and other leg in place, slowly curl the pad down as far as possible, squeezing your quads and hamstrings.3.) Hold for a count when you feel as stretch and then return back to the starting position.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Machine Single-Leg Extension',
        'Upper Legs',
        'Strength',
        'Machine - Strength',
        'Steps :1.) Start by sitting on a leg extension machine, with both legs rested underneath the padding and your back flat on the rest behind you.2.) Slowly, while keeping your upper body still, elevate the padding up with just one of your legs, keeping the other still in the starting position.3.) Squeeze with your quads and hamstrings on the way up, going up as far as possible and hold for a count.4.) Return back to the starting position.5.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Machine Single-Leg Press',
        'Glutes,Upper Legs,Lower Legs',
        'Strength',
        'Machine - Strength',
        'Steps :1.) Start by setting up a leg press machine with the amount of weight that you would like to perform and sit down on the machine placing one leg up against the foot rest.2.) Extend your foot to release the weight off of the racks and slowly lower the weight down until your leg is at a 45-degree angle and squeeze your glutes.3.) Hold for a count then return back to the starting position.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Machine Single-Leg Press',
        'Upper Legs',
        'Strength',
        'Machine - Strength',
        'Steps :1.) Start by sitting down on a leg press machine, placing one of your feet on the platform in front of you with shoulder width spacing, the other extended to the side so that it doesn t get in the way and selecting the weight you would like to perform.2.) Slowly, using your hamstrings and quads, push against the platform so that you move backwards, feeling a stretch in your legs and hold for a count.3.) Return back to the starting position.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Machine Single-Leg Press',
        'Upper Legs,Glutes,Lower Legs',
        'Strength',
        'Machine - Strength',
        'Steps :1.) Start by sitting on a leg press machine with one leg positioned off to the side and the other rested on the platform in front of you with a wide stance.2.) Slowly push up against the platform, fully extending your leg and squeezing your hamstrings on the motion upward.3.) Hold for a count then return back to the starting position.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Machine Squat',
        'Upper Legs,Lower Legs,Glutes',
        'Strength',
        'Machine - Strength',
        'The machine squat is similar to the leg press machine that works the same muscles and improves lower extremity strength.1.) Start by adjusting the shoulder rack of the machine so that your feet comfortably reach the crosspiece and keeping a slight bend in your knees.2.) Once in position, press your feet forward and release the safety locks.3.) Slowly lower the weight towards your body, keeping your abs tightly drawn in and knees moving in the same direction as your feet.4.) Don t lock your knees or bounce the weight.'
    ),
    (
        'Machine Tricep Extension',
        'Triceps',
        'Strength',
        'Machine - Strength',
        'The machine triceps extension exercise uses a machine to insure proper range of motion and targeting of the tricep muscleSteps :1.) Start off by adjusting the seat height of the machine so your upper arms and elbows lie flat on the pad.2.) With your arms fully extended grasp the handles and pull them towards your body.3.) Hold for a moment and then slowly return to the starting position.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Machine Unilateral Row',
        'Back',
        'Strength',
        'Machine - Strength',
        'Steps :1.) Start by setting up the unilateral row machine with the amount of weight that you would like to perform for this exercise, placing the knee opposite of the handle on the padding and grabbing the handle with your opposite hand.2.) Bend down slightly with your back and then once in position, elevate the handle up towards your side, squeezing your back and lat muscles, and hold for a count.3.) Return back to the starting position.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Machine Vertical Row (Close Grip)',
        'Back',
        'Strength',
        'Machine - Strength',
        'Steps :1.) Start by sitting on a vertical row machine grabbing the handles with a hammer, neutral, grip and keep your feet flat on the floor in front of you.2.) Once in position, slowly pull the handles in towards your sides, squeezing your back and lat muscles, and hold for a count.3.) Return back to the starting position.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Machine Vertical Row (Reverse Grip)',
        'Back',
        'Strength',
        'Machine - Strength',
        'Steps :1.) Start by sitting on a vertical row machine grabbing the handles with an underhand, reverse, grip and keep your feet flat on the floor in front of you.2.) Once in position, slowly pull the handles in towards your sides, squeezing your back and lat muscles, and hold for a count.3.) Return back to the starting position.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Medicine Ball Bicep Curl on Stability Ball',
        'Biceps,Forearms',
        'Strength',
        'Exercise Ball',
        'The medicine ball biceps curl on an exercise ball requires balance and coordination while also isolating and targeting the bicep muscle1.) Start by sitting on an exercise ball with your feet firmly on the floor in front of you.2.) Hold a Medicine Ball in one hand and curl it up bringing your forearm up to your bicep, isolating the muscle as much as possible.3.) Return to starting position and switch arms.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Medicine Ball Catch and Throw',
        'Back,Core,Shoulders',
        'Strength',
        'Others',
        '1.) Start by standing up straight, either in front of a wall or a partner, with your feet shoulder width apart and a medicine ball in your hands.2.) Extend the ball behind your head, stretching as far back as possible, then using all of your force, throw the ball forward.3.) Follow through with your throw, feeling the tension on your back muscles, shoulders, core and prepare to receive the bounce back from the wall or throw back from your partner.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Medicine Ball Chest Pass',
        'Chest,Shoulders,Triceps',
        'Strength',
        'None',
        'Steps :1.) You can use either a partner or a wall in this exercise.2.) Start off standing up straight with your feet shoulder width apart and an exercise in between your hands up against your chest.3.) Extend through your elbow and push the medicine ball forward towards your partner or the wall.4.) Receive the throw back with both of your hands at chest level and repeat for as many reps and sets as desired.'
    ),
    (
        'Medicine Ball Chest Push',
        'Chest,Core,Shoulders',
        'Strength',
        'Others',
        '1.) Start in a kneeling position holding a medicine ball in between your hands.2.) Explode forward through the hips and push the ball out as hard and far as possible3.) With the push follow through by falling forward and catching yourself with your hands.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Medicine Ball Chest Push',
        'Chest,Core,Shoulders',
        'Strength',
        'None',
        '1.) Start in a kneeling position facing either a wall or a partner, with a medicine ball held between your hands.2.) Explode forward and pass the ball out in front of you as hard as possible with your hips and then following through by falling forward and catching yourself with your hands.3.) Return immediately back to the starting position and repeat for as many reps and sets as desired.'
    ),
    (
        'Medicine Ball Chest Push from Stance',
        'Chest,Core,Shoulders',
        'Strength',
        'None',
        'Steps :1.) Start in a three point stance, with your body squatted down with a flat back and one hand on the ground keeping a medicine ball right in front of you.2.) Reach down and grab the ball with your first step, bringing it to your chest in preparation for a throw.3.) Take another step forward and use as much force as possible to push the medicine ball from your torso outward.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Medicine Ball Chest Push to Run',
        'Chest,Core,Shoulders',
        'Strength',
        'None',
        '1.) Start in a bent stance, keeping your knees and back bent slightly and holding an exercise ball within your hands below your waist.2.) Bring the ball up to your chest, take a step forward with one foot and then with as much force as possible push the ball forward.3.) Immediately after the release of the ball, sprint forward.4.) Repeat for as many reps and sets desired.'
    ),
    (
        'Medicine Ball Chest Throw (Supine)',
        'Triceps,Chest,Shoulders',
        'Strength',
        'None',
        'Steps :1.) Begin by lying on the floor, knees bent and feet flat on the floor with a medicine ball in your hands rested above your chest.2.) Forcefully extend your elbows up and push the ball up directly above your body as high as possible3.) Follow through feeling a stretch on your triceps then catch the ball as it comes back down4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Medicine Ball Decline One-Arm Overhead Throw',
        'Core,Back,Chest',
        'Strength',
        'None',
        'Steps :1.) Start by laying on a decline bench with your back on the bench and feet in the foot rests, holding a ball in one hand extended behind your head and the other arm to your side.2.) Forcefully come up through your shoulders, in a sit up motion, and throw the ball directly in front of you as if you were going for a maximum distance.3.) Bounce the ball off a wall back to you and repeat or have a partner catch and bring the ball back to you for as many reps and set as desired.'
    ),
    (
        'Medicine Ball Decline Two-Arm Overhead Throw',
        'Core,Back,Chest',
        'Strength',
        'None',
        'Steps :1.) Start by laying on a decline bench with your back on the bench and feet in the foot rests, holding a ball in both hands extended behind your head.2.) Forcefully come up through your shoulders, in a sit up motion, and throw the ball directly in front of you as if you were going for a maximum distance.3.) Bounce the ball off a wall back to you and repeat or have a partner catch and bring the ball back to you for as many reps and set as desired.'
    ),
    (
        'Medicine Ball One-Arm Overhead Throw',
        'Core,Back,Chest',
        'Strength',
        'Others',
        'Steps :1.) Start by laying on the ground with your back on the floor and your knees bent, holding a ball in one hand extended behind your head and the other arm to your side.2.) Forcefully come up through your shoulders, in a sit up motion, and throw the ball directly in front of you as if you were going for a maximum distance.3.) Bounce the ball off a wall back to you and repeat or have a partner catch and bring the ball back to you for as many reps and set as desired.'
    ),
    (
        'Medicine Ball Overhead Slam',
        'Core,Core',
        'Strength',
        'None',
        'Steps :1.) Start by standing up straight with your feet shoulder width apart and your arms behind your head holding a medicine ball.2.) Raise the ball above your head fully extending your body and arms.3.) With your force, slam the ball into the ground in front of you as hard as you can and follow through.4.) With the follow through receive the ball from the bounce up.5.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Medicine Ball Overhead Throw',
        'Shoulders',
        'Strength',
        'None',
        'Steps :1.) You can either use a partner or stand in front of a wall for this exercise.2.) Start by standing a few feet away from your partner with your back to them.3.) Bend down towards the floor with your back almost parallel to the ground and your knees slightly bent holding an exercise ball in your hands in between your legs.4.) Then in reverse, forcefully extend your arms over your head and toss the ball behind your head towards your parter, following through with the throw so that you can feel it within your shoulders.5.) Your partner will then catch the ball and roll it back to you.6.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Medicine Ball Rotation',
        'Core',
        'Strength',
        'None',
        'Steps :1.) For this exercise you will need a medicine ball as well as a partner. If you don t have a partner, use a brick wall.2.) Stand back to back with your partner so that you have a decent amount of room spread between you both to pass the ball back and forth for this exercise.3.) Start by one of the individual s holding the ball at their at their waist, then twisting through the hips and turning your shoulders at the same time as your partner.4.) Pass the ball to your partner then twist in the opposite direction to receive the ball as your partner shifts in that direction to pass the ball to you.5.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Medicine Ball Throw (Stability Ball)',
        'Core,Chest,Shoulders',
        'Strength',
        'None',
        '1.) Start by taking a medicine ball and holding it against your chest.2.) Sit down on a stability ball ball, while keeping the medicine ball against your chest, then walk your feet forward so that only your low to mid back is resting on the stability ball.3.) Extend your arms behind your head and behind the ball.4.) Then lift up through your abs and extend your arms forward throwing the medicine ball out high and in front of you.5.) Continue to extend forward until you feel a stretch in your core and your shoulders.6.) Either receive the ball from your partner or on the bounce back from the wall.7.) Repeat for as many reps and sets as desired.Tips :1.) For this exercise you will use either a partner to receive the ball during the throw or throw the ball up against a wall where you will be able to catch and receive the bounce back.'
    ),
    (
        'Medicine Ball Two-Arm Overhead Throw',
        'Core,Chest,Shoulders',
        'Strength',
        'Others',
        'Steps :1.) Start by laying on the ground with your back on the floor and your knees bent, holding a ball in both hands extended behind your head.2.) Forcefully come up through your shoulders, in a sit up motion, and throw the ball directly in front of you as if you were going for a maximum distance.3.) Bounce the ball off a wall back to you and repeat or have a partner catch and bring the ball back to you for as many reps and set as desired.'
    ),
    (
        'Mighty Pose',
        'Core,Glutes,Upper Legs',
        'Stretching',
        'Body Only',
        'Steps :1.) Start by standing with your feet shoulder width apart, big toes and inner thighs together and hands at your sides.2.) Positioning your heels firmly on the ground, bend at your knees, reach out with your arms in front of you and press your palms together.3.) Take a deep breath in and raise your arms overhead keeping your elbows as straight as possible as you make this motion.4.) Lift up from the hips and unhunch your shoulders, press your pubic bone forward  and flattening out your upper back.5.) Bend your knees to lower your hips and press your inner thighs closer together.6.) Hold this position for 5 to 10 breaths and return back to the starting position.'
    ),
    (
        'Modified Push-Up to Forearms',
        'Forearms,Core,Chest',
        'Strength',
        'Body Only',
        '1.) Start off on your hands and knees in a modified push up position.2.) Squeeze your glutes and bring one elbow down to the floor followed by the other so that your upper body is rested upon your forearms.3.) Return back to the starting position by straightening out one arm and then the other.4.) Repeat for as many reps and sets desired.'
    ),
    (
        'Mountain Biking',
        'Cardio',
        'Cardio',
        'Others',
        'Mountain bikin is a sport that consists of riding outdoors, mostly off-road courses and over rough terrain.It requires stamina, core strength, endurance, balance, coordination and handling skills.'
    ),
    (
        'Mountain Climber',
        'Upper Legs,Shoulders,Chest',
        'Stretching',
        'Body Only',
        '1.) To begin this exercise; start off in a push-up position by flexing one knee in and pushing one leg behind you.2.) Switch your legs quickly into same stance and repeat for 20-30 seconds.3.) Return back to the starting position.4.) Repeat this exercise for as many repetitions as needed'
    ),
    (
        'Oblique Crunch',
        'Core',
        'Strength',
        'Body Only',
        '1.) Lie on your back and cross the left foot over the right knee, hands behind your head.2.) Keeping lower back pressed into the floor, lift your shoulder off the floor and then curl your upper body diagonally across your body towards your left knee. 3.) Repeat for the desired amount of repetitions and then switch sides.'
    ),
    (
        'One-Arm Chin-Up',
        'Back,Forearms,Biceps',
        'Strength',
        'Pullup Bar',
        'Steps 1.) To begin this exercise; start off with taking a towel and wrapping it around a handle on the chin up bar.2.) Take your other hand and grab onto the chin up bar in the basic chin-up position then pull up your body until your chest touches the bar. 3.) As you reach the bar, squeeze your back and shoulders tightly and hold for a few seconds then return back to the starting position.4.) Repeat this exercise for as many repetitions as needed.Tips : 1.) A towel is used to help stabilize the body and to support the upper body during this motion'
    ),
    (
        'One-Arm Hang',
        'Back,Biceps',
        'Stretching',
        'Pullup Bar',
        '1.) To begin this exercise; start off with one hand grabbing onto a pull-up bar with your palms facing outwards.2.) Keep your feet flat on the floor and put all of the weight upon your hand holding for 15 seconds.3.) Repeat this exercise for as many repetitions as needed.'
    ),
    (
        'One-Arm Wall Stretch',
        'Back',
        'Stretching',
        'Body Only',
        'Steps :1.) Start by standing straight up, feet shoulder width apart next to a wall.2.) Lean forward against the wall, keeping your feet firmly planted on the ground and knees slightly bent, and place one arm against the wall with the forearm being rested upon the wall the most.3.) Slowly lean onto your arm until you feel a stretch in your back.4.) Hold for 15 to 30 seconds then return back to the starting position.5.) Repeat for as many reps and length as desired.'
    ),
    (
        'One-Knee to Chest (Supine)',
        'Core,Glutes',
        'Strength',
        'Body Only',
        'Steps :1.) Start by laying with your back (supine) on the floor and your hands extended out to your sides.2.) Raise your legs up at a 90-degree angle with your knees slightly bent.3.) After you get into position, extend one leg out straight in front of you and bring the other knee to your chest while at the same time lifting your hips and glutes off of the floor.4.) Return back to the starting position and repeat with the opposite leg.5.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Overhead Stretch',
        'Core,Back,Chest',
        'Stretching',
        'Body Only',
        'Steps :1.) Start by standing up straight with your hands at your sides and feet shoulder width apart.2.) Lace your fingers together and raise your hands up towards the ceiling with your palms facing up.3.) Fully stretch your torso and hold for a count, then return back to the starting position.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Parallel Bar Hip Flexion',
        'Core',
        'Strength',
        'Machine - Strength',
        'Steps :1.) Start by stepping in between parallel bars and placing your arms on the rests allowing your legs to hang and extend down below you.2.) As soon as you are in position, bring your knees towards your chest in a diagonal direction, holding near the top contracting your abs for a few seconds before returning back to the starting position.3.) Repeat in the opposite direction for as many reps and sets desired.'
    ),
    (
        'Parallel Bar Hip Raise',
        'Core',
        'Strength',
        'Machine - Strength',
        '1.) Start with body in a vertical leg position with your forearms resting on the pads and your hands holding onto the handles.2.) Keep your back pressed firm against the pad.3.) Take your legs and lift them up and keep your knees bent on the way up while exhaling. 4.) As your legs reach parallel to your chest, hold for a few seconds, squeezing your abdominals. 5.) Do not swing your legs as this reduces the positive effect of the exercise.6.) The release your legs back down to the starting position as you inhale.7.) Repeat this exercise for as many repetitions as needed.'
    ),
    (
        'Parallel Bar Leg Raise',
        'Core,Upper Legs,Lower Legs',
        'Strength',
        'Machine - Strength',
        'Steps :1.) Start by positioning yourself on parallel bars by placing your back on the padding, forearms rested upon the arm rests and grabbing the handles in front of you.2.) Keep your legs extended and together, then slowly elevate your feet up towards the ceiling, still keeping them together and straight.3.) Squeeze your lower abs as much possible on the way up and go up as far as possible, hold for a count then return back to the starting position.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Passive Opening Twist',
        'Core,Back,Chest',
        'Stretching',
        'Body Only',
        '1.) Start by laying on your chest with your arms and legs apart in a star form.2.) Keeping your right hand and arm attached to the floor, move your left arm up and over your left hip.3.) Allow both of your knees to bend slightly and roll over onto the sides of your feet.4.) Turn your head to look behind you as you lay your left arm right next to the side of your head.5.) Hold this position for 1 to 2 minutes and then return back to the starting position and repeat with the opposite side.'
    ),
    (
        'Pelvic Tilt to Glute Bridge',
        'Back',
        'Stretching',
        'Body Only',
        'Steps :1.) Start by laying with your back on a mat with your feet flat on the floor and your heels directly underneath your knees.2.) Slowly lift up through your tailbone and bring your torso up to the ceiling so that you stretch out your lower back.3.) As soon as you feel tension in your lower back, hold for 15 to 30 seconds.4.) Return back to the starting position and repeat for as long and as many reps as desired.'
    ),
    (
        'Peroneal Stretch',
        'Lower Legs',
        'Stretching',
        'Bands',
        'Steps :1.) Start in a seated position and take either a belt, rope or band and loop it around one of your feet.2.) Extend both legs out in front of you, then take the belt that is wrapped around the foot and pull so that your foot becomes inverted.3.) You will want the inside of that foot being pulled towards you and hold this position for 15 to 30 seconds.4.) Return back to the starting position and repeat for as many reps, sets and however long you desire.'
    ),
    (
        'Pilates',
        'Cardio',
        'Cardio',
        'Body Only',
        'Pilates are an exercise that focus upon developing strength through the core of the body as well as increasing flexibility and coordination.'
    ),
    (
        'Plank',
        'Core,Back',
        'Strength',
        'Body Only',
        '1.) Start by kneeling on all fours and aligning both hands right below your shoulders keep your knees beneath your hips.2.) Extend both of your feet out behind you and squeeze on your core muscles, making sure that your body is aligned straight 3.) Hold this position for about 30 seconds to a minute.4.) Release, return back to the starting position and repeat for as many times as you would like to perform this exercise.'
    ),
    (
        'Plyo Push-Up',
        'Chest,Shoulders,Triceps',
        'Strength',
        'Body Only',
        'Steps :1.) Start in a prone push up position on the floor with your arms fully extended at shoulder width and keeping your body straight.2.) Slowly descend to the ground by flexing through your elbows, lowering your chest towards the ground until you feel a tension in your chest.3.) As soon as you feel a stretch in your muscle quickly push yourself back up so that your hands leave the ground.4.) Return back to the starting position and repeat for as many reps and sets as desired'
    ),
    (
        'Posterior Capsule Stretch',
        'Shoulders,Back,Triceps',
        'Stretching',
        'Body Only',
        '1.) Start off standing up straight with your arms at your sides and your feet shoulder width apart.2.) From there bring one of your arms across your chest so that the palm faces the body with your other arm putting pressure until you feel a stretch in your shoulder.3.) Hold this position for 30 seconds to a minute and repeat with the opposite side.'
    ),
    (
        'Posterior Lower Leg Stretch',
        'Lower Legs,',
        'Stretching',
        'Body Only',
        '1.) Start this stretch by kneeling down on one knee while the opposite foot is planted flat on the floor.2.) Keep your spine straight and your hips/shoulders aligned.3.) Take one of your hands and place it upon the knee of the outstretched leg and lunge forward slightly.4.) Hold for a few seconds, switch legs and repeat.'
    ),
    (
        'Posterior Tibialis Stretch',
        'Lower Legs',
        'Stretching',
        'Bands',
        'Steps :1.) Start in a seated position and take either a belt, rope or band and loop it around one of your feet.2.) Extend both legs out in front of you, then take the belt that is wrapped around the foot and pull it until your foot becomes everted.3.) You will want the outside of that foot being pulled towards you and hold this position for 15 to 30 seconds.4.) Return back to the starting position and repeat for as many reps, sets and however long you desire.'
    ),
    (
        'Preacher Curl Machine',
        'Biceps,Forearms',
        'Strength',
        'Machine - Strength',
        'The preacher curl machine exercise is a great exercise to support the triceps and isolate the biceps to build bigger and stronger arms.1.) Start off by adjust the seat of the bench so your arms are level with the top of the bench and resting your forearms against the bench and extend them fully.2.) Grasp the bar underhand (palms up) and pull it towards your head, isolating and squeezing the bicep muscle.3.) Pause for a moment and then lower the bar back to starting position.4.) Repeat for as many reps and sets you desire.Tips : 1.) Perform this exercise in a slow controlled manner for best results.'
    ),
    (
        'Prisoner Squat',
        'Upper Legs',
        'Strength',
        'Body Only',
        'Steps :1.) Start by standing up straight with wide feet and your hands behind your head.2.) Slowly lower your body in a controlled squat, extending your hips and knees feeling a stretch in your thighs and glutes.3.) Return back to the starting position and repeat for as many reps and sets as desired.'
    ),
    (
        'Pull-Up',
        'Back,Shoulders,Core',
        'Strength',
        'Pullup Bar',
        '1.) Grab the bar with an overhand grip 2.) Lift your self up till your chin is above the bar.3.) Pause for a few seconds.4.) Lower yourself down slowly.5.) Repeat for the desired amount of reps.Tips : 1.) For an increased workout, wear ankle weights or a weighted vest.'
    ),
    (
        'Pull-Up (Hammer Grip)',
        'Back,Shoulders',
        'Strength',
        'Pullup Bar',
        'Steps :1.) Stand in front of a assisted pull-up machine and grab the hammer grip section of the bar.2.) Lift your feet up off of the floor and pull up slowly, squeezing your lats until your shoulders are level with your head.3.) Hold this position for a count then return back to the starting position.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Push-Up',
        'Chest,Triceps',
        'Strength',
        'Body Only',
        'The push up exercise is one of the best exercises available for building a strong chest, arms, core and back.1.) Start off by lying face down on the floor or on a mat with your feet together and arms shoulder width apart.2.) Slowly draw your abs in, inhale and raise your body off of the floor until your arms are straight, keeping your head and neck level with your body as this will be your starting position.3.) As you lower yourself down towards the ground, exhale until your chest almost touches the ground and you feel a stretch in your chest muscles.4.) Hold for a count at the bottom position and then return back up to the starting position.Tips :1.) A close grip works more of the inner pectorals and a wide grip works more of the outer pectorals.'
    ),
    (
        'Push-Up (Close Hand)',
        'Chest,Shoulders,Triceps',
        'Strength',
        'Body Only',
        'Steps :1.) Start laying on the floor in a push-up position with your feet extended out behind you and your hands shoulder width apart.2.) Slowly walk your hands inward so that your fingertips and your thumbs are touching and creating almost a diamond shape or as close together as possible.3.) Lower yourself towards the ground until your chest almost touches the floor and hold.4.) Return back to the starting position squeezing your chest on the way back up.5.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Push-Up (Wide Hand)',
        'Chest,Shoulders,Triceps',
        'Strength',
        'Body Only',
        'Steps :1.) Start by laying on the floor in a push-up position with your feet extended out behind you and your hands shoulder width apart.2.) Slowly walk your hands outward so that your hands are a bit further out than shoulder width apart.3.) Lower yourself towards the ground until your chest almost touches the floor and hold.4.) Return back to the starting position squeezing your chest on the way back up.5.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Push-Up to Side Plank',
        'Chest,Shoulders,Triceps',
        'Strength',
        'Body Only',
        'Steps :1.) Start in a push-up position on the floor with your toes extended out and arms at shoulder level.2.) Once in position perform a push-up and then quickly come back up, but shift your weight to one side of your body twisting to one side and bringing the arm on the twisted side up towards the ceiling.3.) Hold this position for a count then return back to the starting position for another push-up.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Quadricep Stretch',
        'Upper Legs',
        'Stretching',
        'Bench',
        'Steps :1.) Begin by standing with your back about 2 feet away from a bench or step with one leg lifted up behind you rested upon the platform.2.) Keep one leg out in front of you supporting your weight during this stretch and slightly bend to relieve any discomfort.3.) Repeat for as many reps and however long you desire.'
    ),
    (
        'Quadricep Stretch',
        'Upper Legs,Upper Legs,Lower Legs',
        'Stretching',
        'Body Only',
        '1.) Start by standing straight up holding one ankle, keeping your spine aligned and straight.2.) Lean your pelvis to the side and tighten you glutes of the leg that is being stretched.3.) Hold this position for 15 to 30 seconds and then repeat with the opposite side.'
    ),
    (
        'Quadricep Stretch',
        'Upper Legs',
        'Stretching',
        'Body Only',
        'Steps :1.) Begin by wrapping either a belt, rope or exercise band around one of your feet and lay on your side, with the top foot being the one that is wrapped and the other extended out behind you.2.) Slowly flex the top knee and bring your foot back in attempt to touch your glutes with your heel.3.) As the belt is held over your shoulder, pull on it to increase the tension and stretch on your quad, holding this position for 15 to 30 seconds.4.) Return to the starting position and repeat for as many reps, sets and duration as you desire.'
    ),
    (
        'Reach and Catch',
        'Core',
        'Strength',
        'Body Only',
        'Steps :1.) Start by laying with your back flat on the floor, keeping your knees bent, feet together and arms extended in front of you with fingers interlaced.2.) Place your hands on your right thigh then slowly flex your abs and pull your hands up towards your knee until you feel a stretch in your abs.3.) Slowly lower back to the starting position and repeat in the opposite direction.4.) Repeat for as many reps and sets as possible.'
    ),
    (
        'Rear Pull-Up (Wide Grip)',
        'Back,Shoulders',
        'Strength',
        'Pullup Bar',
        '1.) Start by grabbing a pull-up bar with an overhand grip.  2.) Position each hand about a foot away from your head. 3.) Lift yourself up until the back of neck is behind the pull-up bar. 4.) Exhale as you lift yourself up and inhale as you lower your body.5.) Slowly let your self back down to the starting position. 6.) Repeat for the desired amount of reps.'
    ),
    (
        'Reclining Big Toe Pose',
        'Upper Legs,Glutes,Back',
        'Stretching',
        'Body Only',
        '1.) Start by laying on your back with your knees bent up towards the ceiling.2.) Take your right leg, extend it up and grab it.3.) Allow the straight leg that is being held to go out to the side of your body, keeping it straight in the process and you move it down towards the floor.4.) Turn your head slightly in the opposite direction and keep your opposite hand pushed upon the left leg.5.) Hold this position for 5 to 10 breaths and then switch legs.'
    ),
    (
        'Recumbent Bike',
        'Cardio,Upper Legs,Lower Legs',
        'Cardio',
        'Machine - Cardio',
        'The recumbent bike is a great cardio exercise. It is a variation of a cardio workout that involves the recumbent bicycle that places the individual in a laid back reclining position.It is a great exercise for burning calories, increasing stamina and endurance, improving balance and helps build core and lower leg strength.'
    ),
    (
        'Reverse Crunch',
        'Core',
        'Strength',
        'Body Only',
        '1.) Start with your back flat on the floor and your legs extended and knees bent. 2.) Your arms should be at your sides during the entire exercise.3.) Keeping your knees bent, move your legs up in the air, followed by inhaling and moving your legs towards your chest, rolling your pelvis back and lift your hips up off of the floor.4.) Squeeze your abs as you reach the final position, hold on for a few seconds then return your legs back to the starting position.5.) Repeat this exercise for as many repetitions as needed.'
    ),
    (
        'Reverse Hyper (Flat Bench)',
        'Glutes,Back,Core',
        'Strength',
        'Bench',
        '1.) Begin by laying face down in a prone position on a bench with your toes touching the floor and legs extended out straight behind you.2.) Once in position, pull your legs up towards the ceiling until you feel tension in your glutes.3.) Hold for a two count before bringing your legs back down to the starting position.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Reverse Lunge Crossover',
        'Back,Core,Upper Legs',
        'Stretching',
        'Body Only',
        'Steps :1.) Start by standing up straight with your feet shoulder width apart and arms at your side.2.) Slowly perform a rear lunge stepping back with one foot, flexing at your front knee and bending at the hips.3.) While performing this motion, rotate your body and arms across the front leg that is bent.4.) Hold this position for 5 to 10 seconds then return back to the starting position.5.) Repeat this motion to the opposite side and the other leg for as many reps and time limit as you desire.'
    ),
    (
        'Revolved Abdomen Pose',
        'Core,Back,Upper Legs',
        'Stretching',
        'Body Only',
        'Steps :1.) Begin by laying on your back with your arms out to the sides keeping your hands at shoulder level.2.) Take your legs and bring them up in the air whilst lifting your hips and buttocks up and to the left.3.) Extending your heels outward, take your right leg and aim it out towards your fingertips at the side. 4.) Follow this movement slowly by lowering your left leg down to join the right.5.) Try and hold onto both of your feet with your right hand and anchor your body to the floor with your left arm and shoulder.6.) Turn your head in the direction of your left hand and repeat this pose for a few reps, lifting your left leg and up down towards the right and holding at full position.'
    ),
    (
        'Road Cycling',
        'Cardio',
        'Cardio',
        'Others',
        'Road cycling is an exercise based upon racing bicycles that focuses on endurance, stamina, balance, coordination and bursts of speed.'
    ),
    (
        'Rocket Jump',
        'Upper Legs,Lower Legs',
        'Strength',
        'Body Only',
        'Steps :1.) Start by standing up straight with your feet shoulder width apart and your arms at your sides.2.) Slowly squat down halfway and then forcefully push back up as hard and high as possible.3.) The goal is to fully extend your entire body upward, reaching overhead with your hands as far as possible, then landing and absorbing the impact with your legs.4.) Repeat for as many sets and repetitions as desired.'
    ),
    (
        'Rocky Pull-Up (Hammer Grip)',
        'Back,Shoulders,Biceps',
        'Strength',
        'Pullup Bar',
        '1.) Begin by grabbing the pull-up bar with your palms facing in (hammer grip).2.) Lift your chest up towards the bar until it touches it just as in a regular pull-up and make sure that you squeeze your back on the motion upward.3.) Lower your torso back down to the starting position then repeat the exercise again but this time lift up by your chest with the back of your neck touching the bar squeezing your back as soon as your neck touches the bar.4.) Return back to the starting position.5.) Repeat this exercise for as many repetitions as needed.'
    ),
    (
        'Roll Down',
        'Core,Back,Shoulders',
        'Stretching',
        'Body Only',
        '1.) Stand upright with your feet hip-width apart and your hands relaxed at your sides.2.) Drop your head forward, keep your knees slightly bent and let your arms hang down vertically.3.) Exhale and roll your back down starting with your head, bending your knees further as you continue to roll down.4.) Let the back of your neck relax so that the crown of your head is closest to the floor, while keeping your arms dangling the entire motion.5.) Hold this position for 5 to 10 breaths and then roll back up slowly through the spine to the starting position.'
    ),
    (
        'Rolling',
        'Core,Back,Shoulders',
        'Stretching',
        'Body Only',
        '1.) Begin by sitting on the floor with your spine flexed forward in the shape of a "C".2.) Keep your knees bent at a 45-degree angle with your legs connected together, placing your hands on your shins and keeping shoulders in place.3.) While maintaining the "C" shape, roll back onto the floor behind you and exhale.4.) On the ground, keep a lock on your knees and your head slightly tilted forward until you feel a stretch in your lower back.5.) Hold this position for a few seconds and then roll back up to the start, staying completely balanced and in form.6.) Repeat for as many times as you would like.'
    ),
    (
        'Roman Chair Rotational Knee Raise',
        'Core',
        'Strength',
        'Machine - Strength',
        'Steps :1.) Start by positioning yourself on the Roman Chair with your forearms rested upon the pads, hands gripping the handles and back up against the back resting pad.2.) Hang your feet down below you then slowly raise your knees up and across your body as far as possible to one side until you feel a stretch in your lower abs, then return back to the starting position.3.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Rotational Crunch',
        'Core',
        'Strength',
        'Body Only',
        'Steps :1.) Start by laying with your back flat on the ground, knees bent and arms at your sides.2.) Place one leg on top of the other with the lifted leg s ankle rested upon the bent knee and place your hands, interlocking your fingers, behind your head for support.3.) Slowly twist the elbow on the opposite arm towards the elevated leg until you feel a stretch in your abs.4.) Hold this position for a count then return back to the starting position.5.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Rotational Step-Up',
        'Upper Legs,Glutes,Core',
        'Stretching',
        'Bench',
        '1.) Start by standing next to a box or bench slightly rotated so that you aren t fully facing the box, keeping your feet shoulder width apart and straight ahead of your body.2.) Place your hands on your hips, then rotate your body and step up with one foot onto the platform.3.) Finish the rotation by taking the rest of your body and lifting up through the hip on the opposite side onto the platform.4.) Step down, still holding your hands on your hips, return to the starting position and repeat for as many times as you can.'
    ),
    (
        'Rowing',
        'Cardio',
        'Cardio',
        'Machine - Cardio',
        'Rowing is a sport that involves racing across rivers, lakes or oceans.It requires full body strength and endurance building upon work capacity, strength, endurance, coordination, stamina and core strength.'
    ),
    (
        'Runner s Stretch',
        'Upper Legs,Lower Legs',
        'Stretching',
        'Body Only',
        'Steps :1.) Start by standing up straight with your feet shoulder width apart and your arms at your sides.2.) Place one leg behind you, slowly lower your torso down towards the floor and with your hands reach down onto your front leg.3.) Stretch down as much as possible so that you feel a stretch in your hip flexor and hamstrings.4.) Hold to this position for 15 to 30 seconds and return back to the starting position.5.) Repeat for as many reps, sets, and duration as desired.'
    ),
    (
        'Running',
        'Cardio',
        'Cardio',
        'Body Only',
        'Running is one of the most common and effect forms of exercise for muscle toning, weight loss and keeping your lungs and body in shape.Running improves on conditioning the body, endurance, stamina, speed, strength in the legs and core, as well as improving one s posture.'
    ),
    (
        'Sage Twist 1',
        'Core,Back',
        'Stretching',
        'Body Only',
        '1.) Start by sitting on the floor and bringing your legs around to the left, tucking your right foot underneath your left ankle.2.) Take your right hand and bring it behind you to the floor, keeping your knees facing forward and holding onto them with your right arm.3.) Then if possible, take your left hand and slide it underneath your knee and catch hold of the left arm with your right hand, looking back over your shoulder4.) Hold this position for 5 to 10 breaths and return to the starting position and repeat with the opposite side.'
    ),
    (
        'Scalene Stretch',
        'Back,Glutes',
        'Stretching',
        'Body Only',
        '1.) Start off by standing up straight and tall, placing one arm behind your body, the other placed on top of your head while tucking in your chin.2.) Tilt your head so that your ear on the side of the hand is pulled gently towards the shoulder 3.) Hold onto this stretch for about 15 to 30 seconds and repeat with the other side.'
    ),
    (
        'Scissor Kick',
        'Core',
        'Strength',
        'Body Only',
        '1.) Start off with your back flat on the floor and hands extended to your side.2.) Bend your knees slightly and lift your legs up off of the ground. 3.) Then lift your left leg above your right leg as your right leg moves down close towards the floor.4.) Alternate this motion by lifting your right leg higher above your left leg while your left leg moves closer towards the ground keeping your back still on the floor the entire exercise.5.) Repeat this exercise for as many repetitions as needed.'
    ),
    (
        'Scorpion',
        'Back,Back,Glutes',
        'Stretching',
        'Body Only',
        '1.) Start lying facedown on the floor in a "T" position.2.) Take your hips and rotate them to the left and extend your right leg and knee slowly across your body towards your left hand.3.) Hold this position and return back to the starting position.'
    ),
    (
        'Seated Bench Leg Pull-In',
        'Core',
        'Strength',
        'Bench',
        'Steps :1.) Start off with your body sitting at the end of a flat bench and your legs stretched out in front of you. 2.) Keep the upper half of your body leaning back.3.) Take your knees and curl up, pulling your thighs toward your chest as you exhale. 4.) Once your knees have hit the chest level, squeeze your abs and hold for a few seconds.5.) Release your contraction and return back to the starting position inhaling down.6.) Repeat this exercise for as many repetitions as needed.'
    ),
    (
        'Seated Floor Hamstring Stretch',
        'Upper Legs,Lower Legs',
        'Stretching',
        'Body Only',
        'Steps :1.) Start by sitting on a mat with one foot extended out in front of you, toes pointed towards the ceiling, and the other leg bent inwards against the opposite leg s inner thigh.2.) Slowly lean forward and reach for your extended ankle until you feel a stretch in your hamstring.3.) Hold this position for 15 to 30 seconds and then return back to the starting position.4.) Repeat for as many reps, sets and duration as you desire.'
    ),
    (
        'Seated Glute Stretch',
        'Glutes',
        'Stretching',
        'Body Only',
        '1.) You will need a partner for this stretch.2.) Start off in a seated position with your knees bent and one ankle crossed over one knee.3.) With your partner standing behind you, lean forward as your partner braces your shoulders then try to push your body back for 15 to 30 seconds while your partner tries to prevent any movements.4.) Relax your muscles and have your partner gently push your body forward for 15 to 30 seconds to increase the stretch.5.) Repeat for as many reps and however long as desired.'
    ),
    (
        'Seated Hamstring and Calf Stretch',
        'Upper Legs',
        'Stretching',
        'Bands',
        'Steps :1.) Start by placing either a belt, rope or band around one foot then extend both of your legs straight out in front of you.2.) Then lean forward slightly and pull back on the belt to draw the toes of your foot backwards until you feel a stretch on your hamstrings.3.) Hold onto this position for 15 to 30 seconds then return back to the start.4.) Repeat for as many reps, sets and duration as desired.'
    ),
    (
        'Seated Hamstring Stretch',
        'Upper Legs,Lower Legs',
        'Stretching',
        'Body Only',
        'Steps :1.) For this stretch you will need a partner to assist you.2.) Start off sitting flat on the floor with your legs fully extended out in front of you and your partner standing right behind you.3.) Slowly lean forward as you as your partner braces your shoulders, then try to push your torso back for 15 to 30 seconds as your partner prevents any movement from your body.4.) Relax your muscles as then your partner then pushes back on your torso and you lean forward for 15 to 30 seconds.5.) Repeat for as many reps, sets and duration as you desire.'
    ),
    (
        'Seated Leg Tuck',
        'Core',
        'Strength',
        'Bench',
        '1.) Start off with your body sitting in the middle of a flat bench with your legs stretch out in front of you. 2.) Keep the upper half of your body leaning back.3.) Take your knees and curl them up towards you as you bring your chest close to your knees. 4.) Exhale as you perform this motion.5.) Tighten your abs and squeeze for a few seconds, then return back to the starting position as you inhale.6.) Repeat this exercise for as many repetitions as needed.'
    ),
    (
        'Seated Overhead Stretch',
        'Core,Back,Shoulders',
        'Stretching',
        'Body Only',
        'Steps :1.) Begin by sitting up straight on a mat in a butterfly position, touching the soles of your feet together; or you can sit on an exercise ball with both feet flat on the floor in front of you.2.) Position your arms at your sides as this will be your starting position.3.) Slowly reach up with your hands, interlocking your fingers above your head until you feel a stretch in your abdominal muscles.4.) Hold this position for 15 to 30 seconds and then return back to the start.5.) Repeat for as many reps as desired.'
    ),
    (
        'Seated Rotation',
        'Back,Core,Shoulders',
        'Strength',
        'Body Only',
        'Steps :1.) Start by sitting up straight on the floor with your legs extended out in front of you with your inner thighs touching.2.) Take your arms and cross them over your chest.3.) Once in position, lift out through your hips and slowly turn to one side using your abdominals and hold for a few seconds.4.) Return back to the starting position and then repeat in the opposite direction.5.) Repeat for as many reps and sets desired.'
    ),
    (
        'Seated Supinated Cable Wrist Curl',
        'Forearms',
        'Strength',
        'Machine - Strength',
        '1.) To begin this exercise; take the barbell and sit down on the edge of a flat bench and keep your feet on the floor.2.) Take the barbell and bring it up so that your forearm is up and the palm of the hand is facing up. 3.) Curl the bar up and then lower it back down in a repeated motion.4.) Keep your forearms still during the exercise.5.) Repeat this exercise for as many repetitions as needed.'
    ),
    (
        'Seated Trunk Rotation',
        'Back',
        'Stretching',
        'Exercise Ball',
        'Steps :1.) Start by sitting in a chair so that your back is straight, feet are planted on the floor, and your hands behind your head with fingers interlaced.2.) Slowly twist your upper body, through your hips, to one side as far as you can so that the opposite side elbow touches the knee of the leg you are stretching down towards until you feel a stretch in your back.3.) Hold this position for 15 to 30 seconds then return back to the start.4.) Repeat for as many reps and as long as you desire.'
    ),
    (
        'Seated Twist',
        'Core,Back,Glutes',
        'Stretching',
        'Body Only',
        '1.) Start by sitting cross legged and keep your ankles positioned underneath the knees.2.) Take your fingertips on your right hand and place them on the floor in front of you whilst your left fingertips are placed behind your body.3.) With fingers in place put pressure down on the ground, twisting to your left or right, using more of your spine in the motion, and exhale to keep twisting deeper.4.) Hold this position for up to 10 breaths keeping your spine up straight so that your neck and head are aligned over your hips then return back to the starting position.5.) Repeat this pose but in the opposite direction.'
    ),
    (
        'Seated Wide Angle Pose',
        'Upper Legs,Back,Upper Legs',
        'Stretching',
        'Body Only',
        '1.) Start by sitting on the ground with your legs out to the sides in a 90-degree angle, knees and toes pointing straight up.2.) Take your right hand and place it upon your right thigh, then inhale and raise your left arm up and curve it over the right so it create a "C" over the right side of your body.3.) Keeping your left arm and shoulder in the same plane as your right, start to slide your right hand down your leg, holding this position for a few seconds.4.) Twist your hips towards the floor and lower your left hand towards your right foot and grasp the foot with both hands.5.) Hold this position for a few seconds and then walk your hands towards the center of your spread legs keeping the stretch in tact and switch over to the opposite leg.'
    ),
    (
        'Shell Stretch',
        'Core,Back,Shoulders',
        'Stretching',
        'Body Only',
        '1.) Begin on all fours with your knees underneath your hips and your arms in line with your shoulders.2.) Take your head and lower it between your arms, then lower your glutes to your heels, keeping your hands in front of you on the floor during the entire motion.3.) Hold onto this position for 15 to 30 seconds and then return back up to the starting position.Tips : 1.) It is important to feel the spine straighten out during the inhalation'
    ),
    (
        'Shoulder Circles',
        'Shoulders',
        'Stretching',
        'Body Only',
        'Steps :1.) Start off standing up straight with your feet shoulder width apart and your arms rested at your sides.2.) Slowly roll your shoulders up, then back and down, feeling a stretch in the muscles.3.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Shoulder Rotation',
        'Shoulders',
        'Stretching',
        'Body Only',
        'Steps :1.) Start by standing up straight with your arms at your sides and feet shoulder width apart.2.) Raise your hands and place them on your shoulders with your elbows at shoulder height pointing outward.3.) Then slowly rotate your elbows in a circular motion so that you feel a stretch within your shoulders.4.) Continue for as many reps and however long you desire and repeat.'
    ),
    (
        'Shoulder Stretch',
        'Shoulders',
        'Stretching',
        'Body Only',
        'Steps :1.) Start by standing up straight with your feet shoulder width apart and your arms rested at your sides.2.) Then slowly with your left arm reach across your body and hold it straight out.3.) Using your right hand, grab onto the elbow of the left arm and pull it towards your chest.4.) Hold this position for 15 to 30 seconds and then return back to the starting position.5.) Repeat for as many reps and however long you desire.'
    ),
    (
        'Side Angle Pose With Rotation',
        'Core,Glutes,Upper Legs',
        'Stretching',
        'Body Only',
        '1.) Begin this pose in a lunge position keeping your feet at least 3-feet apart with your right foot being the lead.2.) Lift your arms at shoulder level and fully extend at your elbows, then lunge into your right leg until you are almost at a 90-degree angle at the knee joint.3.) Follow this by bending to the right side allowing the left hand to touch the floor just inside of the right foot4.) Hold this position for 5 to 10 breaths and return back to the starting position repeating in the opposite direction.'
    ),
    (
        'Side Bridge',
        'Core',
        'Strength',
        'Body Only',
        'The side bridge exercise is a great core workout to improve strength and conditioning.1.) Start by lying on one side of your body with your legs extended out straight and your forearm perpendicular to your body.2.) Once in position, draw your abs in and slowly raise yourself up so that you are balanced on your feet and forearm.3.) Hold onto this position for a count, squeezing your abdominals and then return back to the starting position.'
    ),
    (
        'Side Hop-Sprint',
        'Upper Legs,Lower Legs',
        'Strength',
        'Body Only',
        'Steps :1.) Start by standing to the side of a cone or a hurdle, then hop sideways over the obstacle and then rebounding over the obstacle once again to return to the starting position.2.) Continue hopping back and forth for a number of repetitions as quickly as possible. After finishing your last rep, sprint a short distance.3.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Side Jacknife',
        'Core',
        'Strength',
        'Body Only',
        '1.) To begin this exercise; start off lying with your left side on the floor and your left leg above the right. 2.) Place your right hand upon your torso and keep your left hand behind your head.3.) Lift your left leg up as you bring your chest towards your leg contracting your abdominals, as they get closer together. 4.) Squeeze tightly and hold for a few seconds then return back to the starting position.5.) Repeat this exercise for as many repetitions as needed.'
    ),
    (
        'Side Plank',
        'Core,Back,Glutes',
        'Strength',
        'Body Only',
        '1.) Start by lying on your right side with legs extended out, one foot on top of the other and placing your right elbow right underneath your right shoulder.2.) Elevate your hips and draw inward towards your spine, lifting the body onto the forearm and hold for 30 seconds to a minute then lower back to the floor.3.) Repeat for as many reps and sets as desired then repeat with the opposite side.'
    ),
    (
        'Side Step-Up',
        'Upper Legs,Glutes,Upper Legs',
        'Stretching',
        'Bench',
        '1.) Start by standing parallel with a box or bench, keeping your feet shoulder width apart and straight ahead of your body.2.) Place your hands upon your hips, then step to the side with one foot placed upon the box or bench.3.) Follow through by stepping up with the opposite leg through your hip so that you are fully positioned on the platform.4.) Step down still holding onto your hips and repeat for as many repetitions as possible.'
    ),
    (
        'Side Wrist Pull',
        'Shoulders,Forearms',
        'Stretching',
        'Body Only',
        'Steps :1.) Start off standing up straight with your feet shoulder width apart and your arms rested at your sides.2.) Take your left arm and bring it to the middle of your body in front of your chest and with your right hand, hold onto your left wrist.3.) Slowly straight out and lift your arm up to shoulder level, in the direction of the hand that is holding the wrist down, and feel a stretch within your back as well as your shoulders.4.) Hold for 15 to 30 seconds then return back to the starting position.5.) Repeat for as many reps and however long you desire.'
    ),
    (
        'Side-Lying Floor Stretch',
        'Back',
        'Stretching',
        'Body Only',
        'Steps :1.) Start by laying on your side, keeping your one knee slightly bent in front of you and the other extended out behind the bent.2.) Extend your arms out over your head, hands on top of each other, reaching out above you.3.) Hold this position for 15 to 30 seconds and then release.4.) Repeat for as many reps and duration as desired.'
    ),
    (
        'Side-Lying Hip Flexor',
        'Upper Legs,Glutes,Core',
        'Stretching',
        'Body Only',
        'Steps :1.) Begin in a side-lying position on the floor with your hips and legs stacked upon each other.2.) Take the ankle of the top leg and extend back so that the heel feels like it is going to touch your glutes and squeeze.3.) Hold this stretch for 15 to 30 seconds and repeat with the opposite side and leg.'
    ),
    (
        'Side-Lying Quadricep Stretch',
        'Upper Legs',
        'Stretching',
        'Body Only',
        'Steps :1.) Start by laying on your side with the leg on the floor bent at a 90-degree angle to help stabilize the body and the elevated leg being held by one hand.2.) Slowly stretch the elevated leg behind you so that your heel is being pulled towards your glutes.3.) Hold this position for 15 to 30 seconds and return back to the start.4.) Repeat for as many reps, sets or duration as desired.'
    ),
    (
        'Single-Leg Bench Dip',
        'Triceps,Chest,Shoulders',
        'Strength',
        'Bench',
        'Steps :1.) Begin by setting up a flat bench and positioning yourself in between the bench so that your hands are about shoulder width apart on the bench.2.) Move your feet out in front of you so that your legs are bent. Extend one leg straight and hold throughout the exercise.3.) Next, straighten out your arms on the bench so that you are elevated and tension is placed on your triceps.4.) Slowly lower your upper body down towards the floor with your elbows so that they are at level with your shoulders.5.) Hold for a count, squeezing your triceps and return back to the starting position.6.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Single-Leg Butt Kick',
        'Upper Legs,Lower Legs',
        'Strength',
        'Body Only',
        'Steps :1.) Begin by standing on one leg with your other leg bent knee raised.2.) Jump up off of the floor, extending through the hips and knee of the grounded leg and immediately flexing the knee in attempt to touch your glutes with the heel of the jumping leg.3.) As your body comes back towards the ground, return the leg to a partially bent position and land, keeping your other leg still raised and bent through the whole motion.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Single-Leg Calf Raise',
        'Lower Legs',
        'Strength',
        'Body Only',
        'Steps :1.) Start by standing to the side of either a smith machine or a support structure and holding onto it.2.) Slowly lift one of your heels off of the floor as far as possible, keeping the other leg extended behind you, and squeeze your calf.3.) Hold for a count and return back to the starting position.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Single-Leg Donkey Calf Raise',
        'Lower Legs',
        'Strength',
        'Bench',
        'Steps :1.) Start by setting up an incline bench in front of you while you position the balls of your feet in other a step or block behind the bench.2.) Slowly bend forward so that your forearms are rested upon the bench and extend one of your legs behind you or curled around the other foot.3.) Slowly let one of your heels drop towards the floor as this will be your starting position.4.) Then raise your heel slowly up off of the floor as high as possible, squeezing your calf and hold for a count.5.) Return back to the starting position.6.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Single-Leg Glute Bridge',
        'Glutes',
        'Strength',
        'Body Only',
        'Steps :1.) Begin by laying on the floor with your feet flat on the ground and knees bent.2.) Slowly raise one leg off of the ground, pulling the knee towards your chest then extend your hip upward raising your glutes and lower body up off of the ground, still keeping your foot elevated.3.) Extend your body up as far as possible until you feel a stretch in your glutes and hold for a few seconds.4.) Return back to the starting position and repeat for as many reps and sets as desired.'
    ),
    (
        'Single-Leg Hack Squat',
        'Upper Legs,Glutes,Lower Legs',
        'Strength',
        'Machine - Strength',
        'Steps :1.) Start by setting up a hack squat machine with the weight that you would like to perform for this exercise, placing your back on the pad and your shoulders up against the shoulder pads.2.) Place your feet on the platform then lift your right foot off of the platform and extend your left leg in front of you.3.) Push the weight up off of the stack, place your hands on the handles of the machine and this will be your starting position.4.) Slowly lower the weight down until your left thigh is parallel with the ground and your calf muscle and hold for a count.5.) Return back to the starting position.6.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Single-Leg Kickback',
        'Glutes,Upper Legs,',
        'Strength',
        'Body Only',
        'The single-leg kickback exercise is a great exercise for anyone looking to tone their glute muscles.1.) Start by standing at a cable tower attach an ankle cuff to a low pulley.2.) Facing the weight stack, with a slight bend in your knees and your abs drawn in slowly kick your ankle back in and arc as high as you are able to.3.) Return to starting position and switch ankles.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Single-Leg Push-Up',
        'Chest,Shoulders,Triceps',
        'Strength',
        'Body Only',
        '1.) Begin by getting yourself into a push-up position with arms shoulder width apart and feet extended behind you with toes flat on the floor.2.) Take one leg and place it over the other so that only one foot is positioned on the floor.3.) Slowly lower yourself down until your chest almost touches the floor then hold for a count.4.) Return back to the starting position.5.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Single-Leg Reverse Hyper (Flat Bench)',
        'Core,Upper Legs,Glutes',
        'Strength',
        'Bench',
        'Steps :1.) Start off by laying face down in a prone position on a bench with your toes touching the floor.2.) Extend your legs straight out behind you then pull one leg up towards your upper body until you feel tension in your abs and glutes.3.) Hold this position for a count then return back to the starting position.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Single-Leg Squat',
        'Upper Legs,Glutes,Lower Legs',
        'Strength',
        'Body Only',
        'Steps :1.) Start by setting up a horizontal flat bench behind you and placing one of your legs behind you in the middle of the bench as this will be your starting position.2.) Cross your arms in front of you and slowly lower your body down towards the floor, bending with your front leg until your knee is parallel with the floor and hold for a count.3.) Return back to the starting position.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Single-Leg Stance',
        'Core,Glutes,Upper Legs',
        'Strength',
        'Body Only',
        'Steps :1.) Start by standing up straight with both arms at your side then raising up one leg with knee slightly bent.2.) After gaining your balance, slowly flex forward in your pelvis and extend the bent leg out behind you, keeping your body straight and parallel to the floor.3.) Hold this position for a few seconds and then return back to the start.4.) Repeat for as many reps as desired.'
    ),
    (
        'Single-Leg Stride Jump',
        'Upper Legs,Lower Legs',
        'Strength',
        'Body Only',
        'Steps :1.) Start by standing to the side of a box with your inside foot on top it.2.) Then quickly swing your arms upward and out as you push through your leg and jump as high as possible.3.) Bring the opposite knee upward and then land in the same position as you have started.4.) Repeat for as many reps and sets as you desire.'
    ),
    (
        'Sissy Squat',
        'Upper Legs,Glutes,Lower Legs',
        'Strength',
        'Body Only',
        'Steps :1.) Start by standing up straight, with your feet shoulder width apart next to either a smith machine or support structure.2.) Bend slightly with your knees, place one arm across your chest and use the other to hold onto the support.3.) Slowly lower your body backward, while raising your heels off of the ground, squatting down until you feel a stretch in your hamstrings and hold for a count.4.) Return back to the starting position.5.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Sit-Up',
        'Core',
        'Strength',
        'Body Only',
        '1.) To begin this exercise; start off lying with your back flat on the floor. 2.) You can place your feet flat, keep an object above them, or have a partner hold them.3.) Bend your legs at the knees and place your hands behind your head. 4.) Then lift your upper body towards your knees, contracting your abdominals on the way up. 5.) When reaching the final position, hold and squeeze for a few seconds then return back to the starting position.6.) Repeat this exercise for as many repetitions as needed.'
    ),
    (
        'Smith Machine Behind the Back Wrist Curl',
        'Forearms',
        'Strength',
        'Machine - Strength',
        '1.) Start by setting up a weighted smith machine and grab the bar behind your back using an underhand shoulder width grip.2.) Keep your elbows tucked in at your sides and slowly raise the bar up, squeezing your forearms and hold for a count.3.) Return back to the starting position.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Smith Machine Bench Press',
        'Chest,Shoulders,Triceps',
        'Strength',
        'Machine - Strength',
        'The smith machine bench press exercise is the same exercise as the typical bench press but it uses the smith machine to allow for greater control throughout the exercise.1.) Start by placing a flat bench in the middle of a smith machine so that the bar is in line with the middle of your chest.2.) Lie down with your back flat on the bench and grab the bar with a shoulder-width grip as this will be your starting position.3.) Unlatch the bar, then slowly lower it down towards your chest until it barely touches and you feel a stretch in your muscles.4.) Hold this position for a count then return back up to the start5.) Repeat for as many reps and sets as desired.Tips : 1.) The smith machine is a great tool for beginners to learn to use free weights safely and how to perform the bench press correctly.'
    ),
    (
        'Smith Machine Bench Press (Close Grip)',
        'Triceps,Chest,Shoulders',
        'Strength',
        'Machine - Strength',
        'The smith machine close grip bench press exercise uses a close grip to isolate the triceps and also work the chest muscles.Steps :1.) Start off by placing a flat bench in the middle of a smith machine.2.) Using a close grip, hands about 6 inches apart, unlatch the bar and lower it towards your chest.3.) Pause just before the bar hits your chest and raise the bar by extending your arms to the starting position.4.) Repeat for as many reps and sets as possibleTips :1.) Refrain from bouncing the bar off of your chest as this is improper form and could lead to injury.'
    ),
    (
        'Smith Machine Bench Press (Reverse Grip)',
        'Chest,Shoulders,Triceps',
        'Strength',
        'Machine - Strength',
        'Steps :1.) Start by setting up a smith machine with the amount of weight that you want to perform and placing a flat bench underneath the bar, centering it out for the exercise.2.) Grab the bar with an underhand reverse shoulder width grip, then unload the bar from the rack and press it above your chest.3.) Slowly lower the bar towards your chest so that it is barely touching and hold for a count.4.) Return back to the starting position.5.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Smith Machine Bench Press (Wide Grip)',
        'Chest',
        'Strength',
        'Machine - Strength',
        'Steps :1.) Start by setting up a smith machine with the amount of weight that you want to use to perform the exercise.2.) Place a flat bench underneath the bar and lay down with your back flat on the bench and feet out in front of you.3.) Grab the bar with an overhand grip, keeping your hands at a wide distance and release the weight from the rack.4.) Slowly lower the bar towards your chest, feeling a stretch, and hold for a count.5.) Return back to the starting position.6.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Smith Machine Bent-Over Row',
        'Back,Biceps',
        'Strength',
        'Machine - Strength',
        'The smith machine bent over row exercise works on improve your posture and strengthening your upper back.1.) Start by standing up straight with your feet shoulder-width apart, keeping your knees slightly bent and good posture and then lean forward with your upper body until your chest is parallel to the floor.2.) Grab onto the bar with a wide overhand grip, making sure that you keep your chest still and pull the bar up until it is almost touching your chest.3.) Hold this position for a count, squeezing your back muscles, then return back to the starting position in a controlled manner.Tips : 1.) You don t have to use a lot of weight for this exercise to be challenging.2.) Maintain good form for this exercise so that you don t sustain an injury.'
    ),
    (
        'Smith Machine Bent-Over Row (Reverse Grip)',
        'Back,Biceps,Shoulders',
        'Strength',
        'Machine - Strength',
        'Steps :1.) Start by setting up a smith machine in position for a bent over row and adding the weight that you would like to perform.2.) Face the bar and grab it with an underhand shoulder width grip, keeping your back lowered but straight and knees slightly bent.3.) Slowly pull the bar up towards your chest, squeezing your back and hold for a count.4.) Return back to the starting position.5.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Smith Machine Bicep Curl',
        'Biceps',
        'Strength',
        'Machine - Strength',
        'Steps :1.) Start by setting up a smith machine with the amount of weight you would like  to perform for a bicep curl. 2.) Stand up straight in front of the machine grabbing the bar with an underhand grip.3.) Slowly take the bar up off of the supports and lower it so that your arms are rested at your sides.4.) Then curl the bar up towards your shoulders, isolating the bicep, and hold for a count.5.) Return back to the starting position.6.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Smith Machine Bulgarian Split Squat',
        'Upper Legs,Back,Glutes',
        'Strength',
        'Machine - Strength',
        '1.) Start by taking a flat bench and moving it around 2 feet behind the smith machine and then set the barbell at the proper height on your shoulders behind your neck.2.) Take the barbell and lift off of the rack positioning one of your legs up on the flat bench and lower your knee close to the floor until your knee forms a 90-degree angle.3.) Return back to the starting position.4.) Repeat this exercise for as many repetitions as needed'
    ),
    (
        'Smith Machine Deadlift',
        'Back,Glutes,Upper Legs',
        'Strength',
        'Machine - Strength',
        'The smith machine deadlift exercise is the same as the deadlift exercise but uses a smith machine to allow for better control of the weight and smoother motion.Steps :1.) Start off standing with your feet shoulder-width apart so that your feet are placed underneath the bar, making sure that you keep your back straight and bending down at your waist.2.) Grab onto bar with an overhand grip with a shoulder-width grip and slowly elevate your body through your legs so that you straighten out your back and hold the bar at arms length.3.) Hold the position for a count then return back to the starting position.4.) Repeat for as many reps and sets as desired.Tips :1.) Make sure that you lift through your legs and do not lift with your back.2.) Perform this exercise with a weight that you are able to manage so that you don t pull your back out or injury yourself.'
    ),
    (
        'Smith Machine Decline Bench Press',
        'Chest',
        'Strength',
        'Machine - Strength Bench',
        '1.) Start off by taking a decline bench and placing it underneath a bar on a smith machine, lowering the bar so that it is just above chest level, and laying with your head facing the back of the machine.2.) Once in position grab the bar and release it, extending your arms until they are straight but not locked, then lower the bar until your arms are at about level with your chest.3.) Hold this position for a count then return back to the starting position.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Smith Machine Decline Bench Press (Close Grip)',
        'Chest',
        'Strength',
        'Machine - Strength',
        'Steps :1.) Begin by setting up a smith machine with the amount of weight that you want to use to perform the exercise.2.) Place a decline bench underneath the bar and lay down with your back flat on the bench and feet out in front of you either on the floor or underneath rests.3.) Grab the bar with an overhand grip, keeping your hands about a foot apart and release the weight from the rack.4.) Slowly lower the bar towards your chest, feeling a stretch, and hold for a count.5.) Return back to the starting position.6.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Smith Machine Decline Bench Press (Reverse Grip)',
        'Chest',
        'Strength',
        'Machine - Strength',
        'Steps :1.) Begin by setting up a smith machine with the amount of weight that you want to use to perform the exercise.2.) Place a decline bench underneath the bar and lay down with your back flat on the bench and feet out in front of you either on the floor or underneath rests.3.) Grab the bar with an underhand, reverse grip, keeping your hands about a foot apart and release the weight from the rack.4.) Slowly lower the bar towards your chest, feeling a stretch, and hold for a count.5.) Return back to the starting position.6.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Smith Machine Decline Bench Press (Wide Grip)',
        'Chest',
        'Strength',
        'Machine - Strength Bench',
        'Steps :1.) Start off setting up a smith machine with the amount of weight that you want to use to perform the exercise.2.) Place a decline bench underneath the bar and lay down with your back flat on the bench and feet out in front of you either on the floor or underneath rests.3.) Grab the bar with an overhand grip, keeping your hands apart with a wide distance and release the weight from the rack.4.) Slowly lower the bar towards your chest, feeling a stretch, and hold for a count.5.) Return back to the starting position.6.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Smith Machine Deltoid Row',
        'Shoulders,Back',
        'Strength',
        'Machine - Strength',
        'The smith machine rear deltoid row is a great exercise that works your upper back to help improve posture.1.) Start off standing with your feet shoulder-width apart, keeping your knees bend and good posture.2.) Slowly bend forward at your waist until your chest is parallel with the floor3.) Grab the bar with an overhand grip, making sure that you keep your chest still and pull the bar up as high as possible.4.) Hold briefly then lower the the starting position in a controlled manner.4.) Once you reach the top position, hold for a count and squeeze your back muscles, then return back to the starting position.Tips :1.) Make sure when doing this exercise you perform it with a weight that you are able to manage.2.) Maintain good form and posture so that you don t injure your back.'
    ),
    (
        'Smith Machine Front Squat',
        'Upper Legs,Glutes,Lower Legs',
        'Strength',
        'Machine - Strength',
        'Steps :1.) Set up a smith machine for the front squat exercise by placing the amount of weight that you would like to perform for this exercise.2.) Position your shoulders underneath the bar so that the weight is rested upon your collar bone.3.) Cross your arms and place your hands on top of the barbell as this will be your starting position.4.) Push up with your heels and remove the bar from the rack, then slowly lower your body down towards the floor so that your thighs are parallel with the ground and hold for a count.5.) Return back to the starting position.6.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Smith Machine Front Squat',
        'Upper Legs,Triceps,Shoulders',
        'Strength',
        'Machine - Strength',
        'Steps :1.) Start by setting up a smith machine rack with the amount of weight that you would like to perform for the exercise.2.) Position yourself underneath the bar so that your collar bone and shoulders are used to rest the bar across your body.3.) Keep your feet shoulder width apart and extend your arms out in front of you as in a Frankenstein pose.4.) Slowly squat down towards the floor keeping your back straight until your thighs are parallel with the floor and hold for a count.5.) Return back up to the starting position.6.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Smith Machine Good Morning',
        'Back,Upper Legs',
        'Strength',
        'Machine - Strength',
        'The smith machine good morning exercise is one of the oldest exercises for weight lifting and bodybuilding that works the lower back muscles through the use of a smith machine.Steps :1.) Start off by placing the bar of the smith machine across your shoulders and keeping your feet shoulder-width apart, as this will be your starting position.2.) Slowly lower yourself down towards the floor making sure that you keep the lower half of your body still until you feel a stretch in your lower back.3.) Hold this position for a count then slowly return back up to the start in a controlled manner.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Smith Machine Hack Squat',
        'Upper Legs,Glutes',
        'Strength',
        'Machine - Strength',
        'The smith machine hack squat exercise is a variation of the basic squat that focuses on strengthening and building the quadricep muscle.1.) Start by adjusting the bar on the smith machine to a low setting just above your ankles.2.) Stand with the bar on the floor just behind your legs, with your feet shoulder width apart and your toes pointing forward3.) With your feet firmly placed on the floor reach down and grasp the bar from behind with and overhand grip.4.) Lift the bar by extending your hips and knees, be careful not to lock your knees.5.) Squat down until your thighs are parallel to the floor and hold the position for a count.6.) Slowly raise yourself up to starting position.7.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Smith Machine Incline Bench Press',
        'Chest,Shoulders,Triceps',
        'Strength',
        'Machine - Strength',
        'The smith machine incline bench press is a great exercise to help build the pectoral muscles of the chest and great for beginners to be able to control the weights.Steps :1.) Start by placing an incline bench at a 45-degree angle in the middle of a smith machine, then lie down with your back flat on the bench making sure that the bar is aligned across the upper portion of your chest.2.) Grab onto the bar with a shoulder-width grip, unlock it and slowly lower it down towards your chest until you feel a stretch in your pectoral muscles.3.) Hold this position for a count then return back up to the start.4.) Repeat for as many reps and sets as desired.Tips :1.) Refrain from bouncing the bar off your chest.'
    ),
    (
        'Smith Machine Incline Bench Press (Reverse Grip)',
        'Chest,Shoulders,Triceps',
        'Strength',
        'Machine - Strength',
        'Steps :1.) Start by setting up a smith machine with the amount of weight that you want to perform and placing a incline bench underneath the bar, centering it out for the exercise.2.) Grab the bar with an underhand reverse shoulder width grip, then unload the bar from the rack and elevate it above your chest.3.) Slowly lower the bar towards your chest so that it is barely touching and hold for a count.4.) Return back to the starting position.5.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Smith Machine Incline Shoulder Raise',
        'Shoulders,Chest',
        'Strength',
        'Machine - Strength',
        '1.) To begin this exercise; start off by placing an incline bench underneath a smith machine and align the barbell at a height that you are able to reach the bar.2.) Grab onto the barbell and lift the bar off from the rack and hold it over you with your elbows, slightly bent.3.) Then lift the bar up until your arms are fully extended holding on for a few seconds, returning it back to the starting position.4.) Repeat this exercise for as many repetitions as needed.'
    ),
    (
        'Smith Machine Incline Tricep Extension',
        'Triceps',
        'Strength',
        'Machine - Strength',
        'Steps :1.) Start by placing an incline bench underneath a smith machine at a 30 to 45 degree angle, highest end underneath the bar and lay down with your back flat on the bench, feet in front of you.2.) Lift the bar off of the rack with an underhand grip and slowly, while keeping your elbows fixed, lower the bar behind your head as far as possible, squeezing your triceps.3.) Hold for a count then return back to the starting position.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Smith Machine One-Arm Row',
        'Back,Biceps,Shoulders',
        'Strength',
        'Machine - Strength',
        'Steps :1.) Start by setting up a smith machine at the bottom of the rack with the amount of weight that you would like to perform the exercise with.2.) Stand to the side of the bar and bend over creating a 90 degree angle with your body, then slowly reach down with the arm on the side of the bar and grip with a neutral grip.3.) Pull the bar up towards your side, squeezing in your back, and hold for a count.4.) Return back to the starting position.5.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Smith Machine Rear Shoulder Press',
        'Shoulders,Triceps',
        'Strength',
        'Machine - Strength',
        '1.) Start by setting up a weighted smith machine with the bar positioned at the top rack with full upright bench positioned right underneath the bar.2.) Sit on the bench with feet flat on the floor and remove the bar off of the rack.3.) Slowly lower the weight behind your head, feeling a stretch in your shoulders and squeeze, and hold for a count.4.) Return back to the starting position.5.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Smith Machine Reverse Bench Press (Close Grip)',
        'Triceps,Chest,Triceps',
        'Strength',
        'Machine - Strength',
        '1.) Start by setting up a smith machine for the close grip bench press exercise by placing a flat bench underneath the bar and laying down with your back flat on the bench, feet in front of you.2.) Grab the bar with a reverse grip, palms facing inward, then lift the bar off of the rack and slowly lower it down towards your chest.3.) Keep your elbows tucked in at your sides, until the bar is almost touching your chest and hold for a count.4.) Return back to the starting position.5.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Smith Machine Reverse Calf Raise',
        'Lower Legs',
        'Strength',
        'Machine - Strength',
        'The smith machine reverse calf raises exercise is a unique workout that works the anterior muscle of the calf.1.) Place a block or low box under the bar at a smith machine and standing on the edge of the box with your toes hanging off.2.) Place the bar across your shoulders and lean forward lifting your ankles off the box, feeling a stretch in your calf muscles3.) Return to the starting position.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Smith Machine Shoulder Press',
        'Shoulders,Triceps',
        'Strength',
        'Machine - Strength',
        '1.) To begin this exercise; start off by placing an incline bench underneath a smith machine and align the barbell at a height that you are able to reach the bar.2.) Grab onto the barbell and lift the bar off from the rack with your palms facing forward and then lower the barbell until it is level with your chin.3.) Push the barbell back to the starting position by squeezing your shoulders.4.) Repeat this exercise for as many repetitions as needed.'
    ),
    (
        'Smith Machine Shoulder Press',
        'Shoulders,Triceps',
        'Strength',
        'Machine - Strength',
        'Steps :1.) Start by setting up a smith machine with the weight that you would like to perform, placing either a flat or elevated bench underneath the bar so that it comes down just in front of your face.2.) Sit down on the bench keeping your feet flat on the floor in front of you and un-rack the bar so that it is elevated above your head.3.) Slowly lower the weight down so it is below your chin, feeling a stretch in your shoulders and hold for a count.4.) Return back to the starting position.5.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Smith Machine Shoulder Press (Close Grip)',
        'Shoulders',
        'Strength',
        'Machine - Strength',
        'Steps :1.) Start by setting up a incline bench underneath a smith machine bar so that the end of the bench is right underneath the weight.2.) Place the amount of weight that you would like to use on the bar for this exercise.3.) Sit down with your back flat on the bench, feet out in front of you and holding the bar with a overhand close grip, keeping your hands about a foot apart.4.) Lift the bar off of the rack and slowly bring it down towards your chest, feeling a squeeze and stretch, then hold for a count.5.) Return back up to the starting position.6.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Smith Machine Shoulder Press (Wide Grip)',
        'Shoulders',
        'Strength',
        'Machine - Strength',
        'Steps :1.) Start by setting up an incline bench underneath a smith machine bar so that the  end of the bench is right underneath the weight.2.) Place the amount of weight that you would like to use on the bar for this exercise.3.) Sit down with your back flat on the bench, feet out in front of you and holding the bar with a overhand wide grip.4.) Lift the bar off of the rack and slowly bring it down towards your chest, feeling a squeeze and stretch, then hold for a count.5.) Return back up to the starting position.6.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Smith Machine Shrug',
        'Back,Shoulders,',
        'Strength',
        'Machine - Strength',
        'The smith machine shrug exercise is a safer alternative of the shrug exercise, especially if you are performing heavier weights as you are able to do drop sets without worrying about sustaining an injury, as well as being able to lock the bar at a height that is easily able to be lifted off from.Steps :1.) Start off setting up the smith machine with weight that you can perform and locking the bar at mid thigh level.2.) Stand up straight in front of the bar and grip the bar so that your palms are facing in towards your body, then slowly lift the bar up by contracting your traps until the top of your shoulders are level with your jaw.3.) Hold this position for a count, squeezing your shoulder muscles then return back to the starting position.Tips :1.) Make sure that you perform this exercise in a slow manner to get the best results.'
    ),
    (
        'Smith Machine Single-Leg Calf Raise',
        'Lower Legs',
        'Strength',
        'Machine - Strength',
        'Steps :1.) Start off setting up a smith machine with the amount of weight that you would like to perform for this exercise and placing either a step or block underneath the bar.2.) Position yourself underneath the bar so that the bar is racked on the top of your back muscles.3.) Step up on the block or step with your right foot that the ball of your foot is rested upon the platform and keep your other leg extended behind you.4.) Release the bar from the rack and slowly lower your heel down towards the floor, then elevate your heel up towards the ceiling as far as possible squeezing your calf.5.) Hold for a count then return back to the starting position.6.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Smith Machine Single-Leg Calf Raise',
        'Lower Legs',
        'Strength',
        'Machine - Strength',
        'Steps :1.) Start by setting up the amount of weight on the smith machine that you would like to perform for this exercise 2.) Place a horizontal bench underneath the bar and either a step or block in front of the bench.3.) Sit down in the middle of the bench and lower the bar down towards your waist rasting it upon your right thigh.4.) Extend your left leg out in front of you and place the ball of your right foot on the block.5.) Raise the bar up off of the rack and lower your right heel down towards the floor as far as possible then slowly raise your heels up off of the floor, squeezing your calf in the process.6.) Hold for a count then return back to the starting position.7.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Smith Machine Split Squat',
        'Glutes',
        'Strength',
        'Machine - Strength',
        'Steps :1.) Begin in a lunge position underneath a smith machine bar with one foot in front and one foot in the back.2.) Release the bar off of the guides and slowly lower it until your thighs are parallel to the floor.3.) Hold this position for a count and then return back up to the starting position.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Smith Machine Squat',
        'Upper Legs,Lower Legs,Glutes',
        'Strength',
        'Machine - Strength',
        'The smith machine squat exercise is a great overall exercise for the lower body and this is the original version of this exercise that allows for better flow of movement.1.) Start by setting up the height of the barbell up to shoulder height and placing your feet slightly wider than shoulder-width apart keeping your knees and toes pointed outward.2.) Slowly descend towards the ground by bending at the knees and hips in a squatting motion.3.) Continue to lower yourself as far as you can without letting your body shift and hold for a count in the downward position.4.) Return back upright into the starting position and repeat for as many reps and sets as desired.Tips :1.) By using either a pad on the bar or a towel, you can help improve your grip and reduce any pains the bar places upon your back.2.) You can practice this exercise without any weight to allow yourself to become comfortable with the movements.'
    ),
    (
        'Smith Machine Squat to Bench',
        'Upper Legs,Glutes,Lower Legs',
        'Strength',
        'Machine - Strength',
        'Steps :1.) Start by setting up a smith machine with the weight that you would like to perform and placing a flat bench underneath the bar.2.) Place the bar on the back of your shoulder blades and grab it with a wide grip.3.) Keep your back straight, bend slightly at your knees and squat down towards the bench until your thighs are parallel with the floor and your glutes are touching the bench.4.) Hold for a count then return back to the starting position.5.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Smith Machine Stiff-Leg Deadlift',
        'Back,Glutes,Upper Legs',
        'Strength',
        'Machine - Strength',
        'Steps :1.) To begin this exercise; start off by setting the bar on the smith machine so that it is parallel with your thighs and hold on with a palms forward grip.2.) Take the bar off of the machine, while keeping your knees straight,  lower the barbell down right above your feet and squeeze tightly upon your hamstrings.3.) Then start lifting your chest and body back up when you feel your hamstrings stretch.4.) Return back to the starting position.5.) Repeat this exercise for as many repetitions as needed.'
    ),
    (
        'Smith Machine Toe Raise',
        'Lower Legs',
        'Strength',
        'Machine - Strength',
        'Steps :1.) Start by setting up a Smith Machine with the amount of weight that you would like to perform for this exercise and placing either a step or block underneath the bar.2.) Position yourself underneath the bar so that the bar is racked on the top of your back muscles.3.) Step up on the block or step with both of your feet so that your heels are rested upon the platform.4.) Release the bar from the rack and slowly lower your toes down towards the floor, then elevate your toes up towards the ceiling as far as possible squeezing your calf.5.) Hold for a count then return back to the starting position.6.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Smith Machine Upright Row',
        'Shoulders,Biceps,Back',
        'Strength',
        'Machine - Strength',
        'The smith machine upright row exercise targets the shoulder muscles, mainly the deltoids and traps.Steps :1.) Start off by setting up the smith machine properly so that you are able to perform this exercise by locking the bar so that it is inline with the middle of your thighs.2.) Stand in front of the bar with your feet shoulder-width apart, tightening your ab muscles and gripping the bar with an over hand grip.3.) Slowly raise the bar up towards your chin, focusing on contracting your traps until the bar is just at around collar bone level.4.) Hold this position for a count, squeezing your shoulder muscles and then return back to the starting position in a controlled manner.Tips :  1.) Make sure to keep your body and wrists straight.2.) Do not use the force of the bounce back off of the stoppers to perform more reps, try to slow the bar down before the stoppers to perform clean and full reps.'
    ),
    (
        'Smith Machine Wrist Curl',
        'Forearms',
        'Strength',
        'Machine - Strength Bench',
        'Steps :1.) Start by sitting down at the end of a flat bench positioned behind a weighted smith machine, grabbing it with an underhand shoulder width grip.2.) Keep your elbows at your side and slowly lower the weight below your legs, squeezing your forearms, and hold for a count.3.) Return back to the starting position.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Smith Machine Zercher Squat',
        'Upper Legs,Glutes,Lower Legs',
        'Strength',
        'Machine - Strength',
        'Steps :1.) Start by setting up a smith machine bar with the weight that you would like to perform for this exercise.2.) Stand with your arms underneath the bar with your feet shoulder width apart then lock your hands together, resting the bar between your forearms and upper arms.3.) Remove the bar off of the rack and slowly squat down towards the ground, squeezing your quads, until your thighs are parallel with the floor and hold for a count.4.) Return back to the starting position.5.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Soleus and Achilles Stretch',
        'Lower Legs',
        'Stretching',
        'Body Only',
        'Steps :1.) Begin by standing up straight with your feet about hip distance apart with one foot slightly in front of the other.2.) Bend slowly at your knees keeping your back heel firmly on the floor until you feel a stretch in your calves.3.) Hold this position for 15 to 30 seconds then return to the starting position.4.) Repeat for as many reps, sets and however long you desire.'
    ),
    (
        'Sphinx',
        'Back,Core,Shoulders',
        'Stretching',
        'Body Only',
        '1.) Start off by lying prone on the ground or a mat with your hands and forearms firmly on the floor.2.) Pressing your pelvis on the mat, extend your upper body up to the ceiling, holding onto this position for a few seconds then returning back to the starting position.3.) Repeat this pose for a few times to be able to stretch out your back.'
    ),
    (
        'Split Jump',
        'Upper Legs',
        'Strength',
        'Body Only',
        'Steps :1.) Start off in a lunge position with one foot forward and one knee bent behind you, and back knee almost touching the ground.2.) Quickly extend through both of your legs, jumping up as high as possible even swinging your arms to gain more height.3.) While in the air, switch the positioning of your legs so that your front foot is back and your back foot is up front.4.) Land and absorb the impact with your legs and going right back into the lunge position.5.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Split Jump',
        'Upper Legs,Glutes,Lower Legs',
        'Strength',
        'Body Only',
        'Steps :1.) Start in a lunge position with one foot forward with knee bent and the rear knee barely touching the ground.2.) Quickly extend through your legs and jump up as high as possible bringing your legs together.3.) On the return back down, move your legs back to their initial position as you land and absorb the impact.4.) Return back to the starting position and repeat for as many reps and sets as desired'
    ),
    (
        'Stability Ball Ab Curl',
        'Core',
        'Strength',
        'Exercise Ball',
        'Steps :1.) Lay down on a mat with your feet firmly planted on the ground and knees slightly bent.2.) Place an exercise ball right above your abdominals with your hands on the ball, then slowly roll the ball up your thighs pausing at the top near your knees, holding this position for a few seconds.3.) Return the ball back down to the starting position slowly and repeat for as many reps and sets desired.'
    ),
    (
        'Stability Ball Back Extension',
        'Back,Back,Glutes',
        'Stretching',
        'Exercise Ball',
        'Steps :1.) Start by kneeling down and leaning into an exercise ball with your toes pointed on the floor and arms extended behind you but close to your body.2.) With your chest rested firmly on the exercise ball, extend your spine upward pressing your pelvis into the ball and feel the stretch and strengthening of your back.3.) Return back to the starting position and repeat for as many reps and sets as possible.'
    ),
    (
        'Stability Ball Back Extension',
        'Back',
        'Stretching',
        'Exercise Ball',
        'The back extension on a stability ball exercise helps provide flexibility to strengthen the back and core muscles.Steps :1.) Start off lying prone on a stability ball with your toes planted firmly on the floor to help provide balance on the ball.2.) With your hands across your chest or at your ears, raise your chest off the ball so you are hyper-extending your spine.3.) Slowly return your chest to the ball.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Stability Ball Back Extension with Hands Behind Head',
        'Back,Back,Glutes',
        'Stretching',
        'Exercise Ball',
        'Steps :1.) Begin by kneeling down and leaning into an exercise ball with your toes pointed on the floor and placing your hands behind your head.2.) Extend your spine upward and push on the exercise ball with your pelvis as you move up.3.) Return back to the starting position and repeat for as many reps and sets as possible.'
    ),
    (
        'Stability Ball Back Extension with Knees Off Ground',
        'Back,Glutes,Core',
        'Stretching',
        'Exercise Ball',
        'Steps :1.) Begin by lying prone with your chest on top of an exercise ball in a plank position with your arms extended back behind your body.2.) Extend your back towards the ceiling and hold position for a few seconds then return to the start position.3.) Repeat for as many reps and sets as possible.'
    ),
    (
        'Stability Ball Back Extension with Rotation',
        'Back,Core,Glutes',
        'Stretching',
        'Exercise Ball',
        'Steps :1.) Start off by positioning your body over an exercise ball, bending your knees into the ball and engaging your core muscles.2.) After getting yourself into position, slowly arch your back in a plank position with arms raised out and extended behind you.3.) While extending your back, rotate slightly to one side, return to the start position and repeat on the opposite side.4.) Repeat for as many reps and sets as you would like.'
    ),
    (
        'Stability Ball Back Stretch',
        'Back,Back,Glutes',
        'Stretching',
        'Exercise Ball',
        'Steps :1.) Start off by sitting on an exercise ball with your feet planted firmly on the floor and your hands placed upon your thighs.2.) Slowly roll down with your back onto the exercise ball, placing the top of the ball right in the middle of your back, and extending your hands out behind your head.3.) As soon as you feel a stretch hold onto this position for a few seconds then return back to the starting position and repeat'
    ),
    (
        'Stability Ball Back Stretch',
        'Back,Back,Glutes',
        'Stretching',
        'Exercise Ball',
        '1.) Sit on a stability ball and lie face up on it with your knees bent and feet on the floor.2.) Extend your body and relax your back on the ball, easing your arms behind your head.3.) Hold this position for 1 to 3 minutes to allow your muscles to relax and stretch.4.) Return back to the starting position.'
    ),
    (
        'Stability Ball Back Stretch',
        'Back,Core,Glutes',
        'Stretching',
        'Exercise Ball',
        'Steps :1.) Start off by lying face down upon an exercise ball.2.) Position yourself so that your abdominals and hips are directly over the top of the ball so that your tension is completely gone in your lower back.3.) Hold onto this position for 15 to 30 seconds and repeat for as many times as you would like.'
    ),
    (
        'Stability Ball Balance',
        'Chest',
        'Stretching',
        'Exercise Ball',
        'Steps :1.) Start by laying face down on top of an exercise ball with your waist resting on the top of the ball.2.) Once in position roll your body forward with your hands and lift your legs up in the air.3.) Hold this position for 15 to 30 seconds then return back to the start.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Stability Ball Bridge',
        'Core,Glutes,Upper Legs',
        'Strength',
        'Exercise Ball',
        'Steps :1.) Begin by laying supine (on your back) with your heels placed upon an exercise ball, keeping your arms flat at your sides.2.) Contract your core muscles and raise your hips up off of the floor, making sure your hands stay firm on the ground, so that your body creates a line elevated upward.3.) Hold this position for a few seconds then return back down to the starting position.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Stability Ball Cable Fly',
        'Chest',
        'Strength',
        'Machine - Strength',
        'Steps :1.) Start off by sitting on an exercise ball, gripping cable handles in each hand.2.) Slowly roll down on the exercise ball making sure that your head and neck are on the ball with your feet planted on the floor ahead of you.3.) Lift up with the cables and bring them straight up above your chest, squeezing throughout the entire motion.4.) Hold onto this position for a few seconds then returning back down to the starting position.5.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Stability Ball Calf Raise',
        'Lower Legs',
        'Strength',
        'Exercise Ball',
        'Steps :1.) Start setting up an exercise ball on the wall, resting your chest up against the ball with dumbbells at your sides and feet close together.2.) This will be your starting position.3.) Slowly walk your feet backward so that your legs are extended behind you and chest is still positioned up against the ball.4.) Raise your heels up off of the floor as far as possible, rolling the ball up the wall slightly, squeezing your calves and hold for a count.5.) Return back to the starting position.6.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Stability Ball Chest Stretch',
        'Chest',
        'Stretching',
        'Exercise Ball',
        'Steps :1.) Start by positioning yourself next to an exercise ball in a kneeling position with one arm rested upon the ball and other keeping your body upright with hand firmly on the floor.2.) Slowly lower your body towards the floor until you feel a stretch in your chest.3.) Hold this position for 15 to 30 seconds and then return to the starting position.4.) Repeat for as long and as many times as you desire.'
    ),
    (
        'Stability Ball Cross-Leg Bridge',
        'Core,Glutes,Upper Legs',
        'Strength',
        'Exercise Ball',
        'Steps :1.) Start off by sitting on an exercise ball and slowly walk your feet out in front of you so that you are laying with your back on the ball.2.) Make sure to keep your head and shoulders on the exercise ball, then cross one ankle over the other, keeping the bent foot planted on the floor.3.) Elevate your hips slowly towards the ceiling squeezing your glutes and then return back to the starting position.4.) Repeat for as many sets as desired and then switch legs.'
    ),
    (
        'Stability Ball Cross-Leg Crunch',
        'Core',
        'Strength',
        'Exercise Ball',
        'Steps :1.) Start by laying flat on your back on an exercise ball, with the ball underneath your upper back region.2.) Keep one of your feet firmly on the floor while the other is crossed over the planted one and place your fingertips behind your head opening up your elbows in the process.3.) After gaining your balance, sit up squeezing with your abdominals.4.) Return back to the starting position and continue your repetitions on that side before switching over to the opposite side and finishing up the rest of your reps and sets.'
    ),
    (
        'Stability Ball Crunch',
        'Core',
        'Strength',
        'Exercise Ball',
        'The crunches with legs on an exercise ball works the core muscles through the use of an exercise ball.1.) Start by lying on your back, placing your feet up on an exercise ball, and positioning your hands across your chest or on either side of your head.2.) Keeping the small of your back on the floor, raise your head, shoulders and chest up and off the floor.3.) Pause for a moment contracting your abs and then return to the starting position.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Stability Ball Crunch',
        'Core',
        'Strength',
        'Exercise Ball',
        'The exercise ball crunch uses a stability ball in this exercise to give you a better range of movement.Steps :1.) Start off sitting on the top of an exercise or stability ball with your feet place firmly in front of you for support and position yourself so that your lower back is centered in the middle of the ball..2.) Slowly lie back and bring your hands across your chest or to either side of your head.3.) Then raise your upper body in an upward crunching motion, squeezing your abs as you sit upright.4.) Hold this position for a count, squeezing your abs and then return back to the starting position.5.) Repeat for as many reps and sets as desired.Tips : 1.) To attain the best results, use a full range of motion in this exercise.'
    ),
    (
        'Stability Ball Dip',
        'Triceps,Chest,Shoulders',
        'Strength',
        'Exercise Ball',
        'Steps :1.) Start by sitting on an exercise and placing your hands on either sides of your body.2.) Slowly step out so that the your glutes are up off of the ball and are held up by your arms.3.) Then dip down as far as possible keeping the ball as still as possible, squeezing your triceps and hold for a count.4.) Return back to the starting position.5.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Stability Ball Dip',
        'Triceps',
        'Strength',
        'Exercise Ball',
        'Steps :1.) Start by sitting on an exercise ball and placing your hands on each side of the ball.2.) Slowly, while maintaining your balance, lift your buttocks off of the ball, keeping your elbows tight at your sides.3.) Bend at your elbows and perform a tricep dip, feeling a stretch and pull in your muscle.4.) Return back to the starting position and repeat for as many reps and sets desired.'
    ),
    (
        'Stability Ball Dumbbell Kickback',
        'Triceps',
        'Strength',
        'Dumbbell',
        'Steps :1.) Start by laying with your chest on an exercise ball, knees on the ground and feet extended behind you, holding a dumbbell in each hand.2.) Raise your elbows up as high as possible and tuck your arms in against your body as this will be your starting position.3.) Extend your arms back as far as possible, squeezing your triceps and hold for a count.4.) Return back to the starting position.5.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Stability Ball Dumbbell Sit-Up',
        'Core,Back,Glutes',
        'Strength',
        'Exercise Ball',
        '1.) Start off by lying with the small of your back on an exercise ball with a single dumbbell held in your hands on your chest.2.) Keeping yourself balanced on the ball, bring in your abdominals towards your spine.3.) While squeezing your abs, bring your torso in an upright motion so that you are in a sit up position on the exercise ball.4.) Then return back down to the starting position and repeat for as many reps and sets as possible.'
    ),
    (
        'Stability Ball Extended Arm Crunch',
        'Core,Back,Glutes',
        'Strength',
        'Exercise Ball',
        'Steps :1.) Begin by lying with the center of your back on the top of an exercise ball and arms extended out towards the sky, keeping your feet firmly planted on the ground.2.) Lift up through your belly button towards your spine and curl your torso.3.) Once you feel tension and a stretch in your abs, return back to the starting position and repeat for as many sets and reps as possible.'
    ),
    (
        'Stability Ball Full Body Plank',
        'Back,Shoulders',
        'Stretching',
        'Exercise Ball',
        '1.) Start by rolling onto an exercise ball so that your hips are resting on top of the ball.2.) Extend your feet out behind you and arms out in front of you on the floor.3.) Squeeze with your lower back so that you feel a tension in the muscles.4.) Hold onto this position for 15 to 30 seconds and then return back to the starting position.5.) Repeat for as many reps and however long you desire.'
    ),
    (
        'Stability Ball Half Moon Stretch',
        'Core,Back,Glutes',
        'Stretching',
        'Exercise Ball',
        'Steps :1.) Take an exercise ball and sit on it with your feet planted flat on the floor keeping your hands on your knees.2.) Sit straight up and flex with your abdominals.3.) Raise both of your arms over your head and hold them together stretching out your core.4.) While maintaining your upright position, slowly bend your upper body to one side in a half moon and hold.5.) Feel a stretch in your upper body and abdominals and hold.6.) Repeat on the opposite side for as many times as you would like.'
    ),
    (
        'Stability Ball Hamstring Contract Relax',
        'Upper Legs,Glutes,Core',
        'Stretching',
        'Exercise Ball',
        '1.) Start by standing straight up with your arms on your chest and one leg extended down with your heel on either an exercise ball or bench.2.) Take your hands and then push down on your inner thighs feeling a stretch and hold for about 15 to 30 seconds.3.) Release the tension and then extend your hamstring by pushing your heel onto the bench or exercise ball and hold for 15 to 30 seconds.4.) Return back to the starting position and repeat with opposite leg.'
    ),
    (
        'Stability Ball Hamstring Curl to Bridge',
        'Glutes,Core,Upper Legs',
        'Strength',
        'Exercise Ball',
        '1.) Start by laying flat on your back with both feet on an exercise ball, keeping your arms flat on the floor by your side.2.) Bend your your knees and curl your heels toward your glutes, then kick up one leg diagonally.3.) Hold this position for a few seconds then return back to the starting position.4.) Repeat with the opposite leg for as many reps and sets as desired.'
    ),
    (
        'Stability Ball Hamstring Stretch',
        'Core,Glutes,Upper Legs',
        'Stretching',
        'Exercise Ball',
        'Steps :1.) Start off by lying on your back with an exercise placed in front of one of your legs that is extended straight backwards with your toes pointed and the opposite leg used as a support, bent at the knee resting the ball on top of the thigh.2.) Making sure that your extended leg stays straight, slowly stretch out your handstring and hold this position for 15  to 30 seconds.3.) Switch legs and repeat motion. Tips :1.) Keep exercise ball in between legs through the entire stretch'
    ),
    (
        'Stability Ball Hamstring Stretch',
        'Core,Glutes,Upper Legs',
        'Stretching',
        'Exercise Ball',
        'Steps :1.) Start by sitting on an exercise ball with an elevated posture and extend your legs out with heels planted on the floor, toes pulled towards your knees.2.) While keeping your legs straight, slowly lean forward keeping your pelvis in position until you feel a stretch.3.) Hold this position for 15 to 30 seconds and return back to the starting position.'
    ),
    (
        'Stability Ball Hamstring Stretch',
        'Upper Legs,Upper Legs,Lower Legs',
        'Stretching',
        'Exercise Ball',
        'Steps :1.) Start off by sitting on an exercise ball with one leg stretched out in front of you while the other is bent inwards towards the ball while keeping your spine straight and upright.2.) When in place, slowly tilt your hips forward towards your straightened leg while your hands are rested upon your bent leg.3.) Hold as soon as you feel as stretch in your legs hold onto this position for 15 to 30 seconds and release.4.) Repeat with the opposite leg.'
    ),
    (
        'Stability Ball Hand and Foot Exchange',
        'Core',
        'Strength',
        'Exercise Ball',
        'Steps :1.) Start by laying on your back with your arms and feet extended out with an exercise held in between your feet.2.) Once in position slowly bring your upper and lower body together at the same time, squeezing with your core, and once reaching the top of the movement transfer the ball from your feet to your hands.3.) After the transfer slowly move back to the original starting position with the ball still kept in your hands extended out and your legs kept straight out.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Stability Ball Head Tilt',
        'Core,Back',
        'Stretching',
        'Exercise Ball',
        '1.) Start by sitting on either an exercise ball or bench, keeping your spine straight and knees bent.2.) Tilt your head in one direction and squeeze back with your shoulders feeling a stretch from your blade down to your lower back.3.) Hold for a few seconds and repeat in the opposite direction'
    ),
    (
        'Stability Ball Hip Extension',
        'Back,Core,Glutes',
        'Strength',
        'Exercise Ball',
        '1.) Start by rolling onto a stability ball getting into a push up position, with the exercise ball right underneath your hips.2.) Keep your legs straight together and lift them as far back as you are able to.3.) Raise both legs slowly and make sure not hyperextend your back, then return back to the starting position.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Stability Ball Hip Flexor Stretch',
        'Upper Legs,Glutes,Core',
        'Stretching',
        'Exercise Ball',
        '1.) Start off by sitting on an exercise ball with one of your feet in front of the ball and the other behind it, both feet extended.2.) Take your hands and place them upon your forward knee and sit up straight.3.) Move your hands back towards your hips, after your in place, and push down on your hips until you start to feel a stretch.4.) Hold this position for a few seconds then switch sides and repeat steps with opposite leg.'
    ),
    (
        'Stability Ball Hip Roll',
        'Core',
        'Strength',
        'Exercise Ball',
        'Steps :1.) Start by laying with your back flat on the floor and putting your legs on top of an exercise ball, with your calves resting on top.2.) Place your arms out to your sides, palms down on the ground in a "T" position, then slowly while using your abs, roll over to one direction as far as possible until you feel a stretch in your core.3.) Return back to the starting position and repeat in the opposite direction.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Stability Ball Hip Rotation',
        'Core,Back,Glutes',
        'Stretching',
        'Exercise Ball',
        '1.) Start by sitting on an exercise ball with your feet firmly on the floor, sitting up straight and putting your hands on your thighs.2.) When in position slowly rotate your hips counter-clockwise a few times while keeping your upper body still.3.) Repeat this movement in the opposite direction for as many times as you would like.'
    ),
    (
        'Stability Ball Hip Thrust',
        'Glutes,Upper Legs,Core',
        'Strength',
        'Exercise Ball',
        '1.) Start by sitting on an exercise ball and slowly walk your feet out and lay with your back on the ball.2.) Keeping your shoulders and head on the exercise ball, cross your arms across your chest.3.) Lift your hips up slowly in a smooth motion, holding for a few seconds then return back to the starting position.4.) Repeat for as many sets and reps as desired.'
    ),
    (
        'Stability Ball Hug',
        'Back',
        'Stretching',
        'Exercise Ball',
        'Steps :1.) Start by sitting on the floor with an exercise ball in between your legs and close to your body.2.) Hug your arms around the exercise ball as a support for your body during this stretch 3.) Then position your feet so that they are flat on the floor.4.) Grip tightly against the exercise ball feeling a full stretch in your back and hold for about 15 to 30 seconds.5.) Repeat for as many reps and however long you desire.'
    ),
    (
        'Stability Ball Hundreds',
        'Core',
        'Strength',
        'Exercise Ball',
        'Steps :1.) Start by laying with your back on the floor and your legs placed on top of an exercise ball, keeping your hands at your sides.2.) Once in position lift your shoulder blades off of the floor with your hands and then quickly raise your hands up and down using short spurts feeling tension on your abs.3.) Repeat for as many reps and sets desired.'
    ),
    (
        'Stability Ball Incline Ab Crunch',
        'Core,Back,Glutes',
        'Strength',
        'Exercise Ball',
        'Steps :1.) Start off by lying on an exercise ball with your lower back, keeping your legs bent on the floor in front of you, and arms crossed on your chest.2.) Then take your abs and pull your ribs down towards your hips, squeezing in on your abdominals so that you feel tension and a stretch.3.) Return back to the starting position and repeat for as many reps and sets as you can perform.'
    ),
    (
        'Stability Ball Jack Knife Push-Up',
        'Core,Chest,Shoulders',
        'Strength',
        'Exercise Ball',
        '1.) Begin by rolling onto an exercise ball until you re in a prone push-up position with your shins positioned on the ball and your hands directly underneath your shoulders.2.) Then bring your knees towards your chest with the exercise ball. 3.) Hold this position for a count then returning back to the starting position.4.) On the return of the exercise ball to the starting position, bring your chest down to the floor in a push-up motion.5.) Return back to the starting position and repeat for as many reps and sets desired.'
    ),
    (
        'Stability Ball Knee Tuck',
        'Core,Glutes',
        'Strength',
        'Exercise Ball',
        'Steps :1.) Start off by rolling onto an exercise ball and assuming a push up position so that your hands are on the floor and shoulder width apart and the exercise ball is just underneath your knees.2.) Bring your legs together and slowly roll the ball and your knees to your chest.3.) Hold this position for a few seconds contracting your ab muscles and return back to the starting position.4.) Repeat for as many reps and sets desired.'
    ),
    (
        'Stability Ball Lat Stretch',
        'Back,Core,Glutes',
        'Stretching',
        'Exercise Ball',
        '1.) Begin by kneeling down with one arm upon an exercise ball and the other hand placed upon the floor.2.) Then, when in place, start to rotate the shoulder and pushing up on your lower back so that a stretch in your back and shoulders is felt.3.) Hold this position for 15 to 30 seconds and repeat with the other arm.'
    ),
    (
        'Stability Ball Lat Stretch',
        'Back,Core,Shoulders',
        'Stretching',
        'Exercise Ball',
        '1.) Begin by lying on your side against an exercise ball, feeling tension on your ab muscles and spine.2.) Take your hand on the elevated part of your body and extend it over your head.3.) Stretch until you feel a pull and tension in your shoulders and lats.4.) Hold onto this position for 15 to 30 seconds and repeat with your opposite side.'
    ),
    (
        'Stability Ball Leg Lift',
        'Core',
        'Strength',
        'Exercise Ball',
        'Steps :1.) Begin by laying down with your back with your legs extended and an exercise ball in between your feet and hands kept at your sides.2.) Once in position slowly raise your legs up off of the floor and bring the ball up towards the ceiling.3.) Hold onto this position for a few seconds then return back to the starting position, squeezing your core throughout the entire motion.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Stability Ball Low Back Stretch',
        'Back,Core,Glutes',
        'Stretching',
        'Exercise Ball',
        'Steps :1.) Begin by lying prone on an exercise ball and putting your arms on the floor next to both sides while your legs rest on the floor behind you.2.) Get into a relaxed position then wrap your arms around the ball in a "hugging" position and feel a stretch along your back.3.) Hold onto this position for a few seconds and then release back to the start.'
    ),
    (
        'Stability Ball Medicine Ball Sit-Up',
        'Core,Back,Glutes',
        'Strength',
        'Exercise Ball',
        'Steps :1.) Start off by lying with the small of your back on a stability ball with your feet planted firmly on the floor2.) Holding a medicine ball straight out pointed towards the ceiling.3.) Still holding the exercise ball in front of you, contract your abdominals up and bring your torso towards the ceiling, elevating the medicine ball up at the same time.4.) Return back to the starting position and repeat for as many sets and reps as you would like.'
    ),
    (
        'Stability Ball Narrow Push-Up',
        'Chest,Core,Triceps',
        'Strength',
        'Exercise Ball',
        'Steps :1.) Begin by rolling into a prone position on an exercise ball until your shins are on the top of the ball and your hands are on firmly on the floor in front of you right under the shoulders.2.) Position your hands and bring them closer together so that they are just shoulder width apart.3.) Lower your chest in a pushup position bending at the arms and go down as far as you comfortably can and then slowly raise back up.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Stability Ball Neck Extension',
        'Shoulders,Back,Glutes',
        'Stretching',
        'Exercise Ball',
        '1.) Begin by sitting on a stability ball keeping your back straight up and feet flat on the floor.2.) Take your hands and grip the sides of the exercise ball allowing your shoulders to slide down.3.) From there slowly roll your head back until you start to feel a stretch.4.) Hold onto this position for 15 to 30 seconds and repeat for as many times as you would like.'
    ),
    (
        'Stability Ball Neck Flexion',
        'Shoulders,Back,Glutes',
        'Stretching',
        'Exercise Ball',
        'Steps :1.) Begin by sitting on a stability ball, allowing your spine to stretch out and align straight, and keep your feet flat on the floor.2.) Take your hands and grip the sides of the exercise ball, retract your shoulders and tuck in your chin.3.) Then roll your head forward until your chin  touches your chest and hold for 15 to 30 seconds. 4.) Repeat for as many times as you would like.'
    ),
    (
        'Stability Ball Oblique Curl',
        'Core,Back,Glutes',
        'Strength',
        'Exercise Ball',
        '1.) Begin by lying down with the lower part of your back on an exercise ball and your feet planted firmly on the floor.2.) Take your hands and extend them behind your head, placing your fingertips on your head to hold your chin up.3.) Then take one of your hands to anchor your body on the ball, curl up your abdominals and squeeze, feeling the tension.4.) Return back to the starting position and repeat for desired repetitions'
    ),
    (
        'Stability Ball One-Arm Bridge',
        'Core,Back,Shoulders',
        'Strength',
        'Exercise Ball',
        'Steps :1.) Start by rolling onto an exercise ball until your knees are rested upon the top of the ball with your hands in front of you underneath your shoulders as if you were about to perform a pushup.2.) While keeping your body completely straight slowly elevate one arm out in front of you so that it is in line with your body and hold for a few seconds.3.) Return back to the starting position and repeat with the opposite arm.4.) Repeat this exercise for as many reps and sets desired.'
    ),
    (
        'Stability Ball Pike Push-Up',
        'Chest,Chest',
        'Strength',
        'Exercise Ball',
        '1.) Start off in a pike position with your toes firmly planted on an exercise ball with your hands in a push-up position right in front.2.) When balanced, slowly do push-ups by lowering your body towards the floor in a pike position.3.) Return back up to the starting position and repeat for as many reps and sets as desired.'
    ),
    (
        'Stability Ball Plank',
        'Core,Back',
        'Strength',
        'Exercise Ball',
        'Steps :1.) Start by laying with your forearms placed upon an exercise ball with your fingers interlaced and extending your legs out behind you so that your toes are rested upon the floor.2.) Keep your body straight out and hold onto this position for as long as possible.3.) Repeat for as many reps, sets and however long as desired.'
    ),
    (
        'Stability Ball Plank with Hip Abduction',
        'Core,Back,Glutes',
        'Strength',
        'Exercise Ball',
        '1.) Begin in a plank position with your forearms resting on an exercise ball and your legs extended out behind you with your toes elevating your body.2.) Engage the core muscles, then take one of your legs and move it out to the side (hip abduction) and hold for a few seconds.3.) Return back to the starting position and repeat with the opposite leg.4.) Repeat this exercise for as many reps and sets desired.'
    ),
    (
        'Stability Ball Pull-In',
        'Core',
        'Strength',
        'Exercise Ball',
        'The exercise ball pull-in uses a stability or exercise ball to isolate and work the lower ab muscles.1.) Start by lying down as if you were performing a pushup and place your feet and shins over either an exercise or stability ball.2.) Make sure that you keep your back straight and supporting your weight with your hands, then slowly pull your knees towards your chest in a controlled manner so that the ball rolls forward under your ankles.3.) Crunch and squeeze your abdominal muscles, hold for a count, then roll the ball back into the starting position.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Stability Ball Push-Up',
        'Chest,Shoulders,Triceps',
        'Strength',
        'Exercise Ball',
        'The push up with your feet on a stability ball is similar to the standard pushup exercise that forces you to engage the muscles of your core to perform the exercise.Steps :1.) Start by placing your feet and your shins flat on top of an exercise ball and then positioning your arms in front of you shoulder-width distance apart with your hands under your arms.2.) Once in position, press up from the ground until your arms are fully extended as this will be your starting position.3.) Slowly lower your body towards the ground until you feel a stretch in your tricep muscles and hold for a count.4.) Return back up to the starting position and repeat for as many reps and sets as desired.'
    ),
    (
        'Stability Ball Quadricep Stretch',
        'Upper Legs,Upper Legs,Lower Legs',
        'Stretching',
        'Exercise Ball',
        'Steps :1.) Begin by sitting on an exercise ball and placing your hands upon either side of the ball.2.) Roll forward slowly so that your upper glutes are barely touching the ball and the middle of your back is in the center of the ball.3.) While rolling forward straighten out one leg and keep the other one bent, then push the bent leg towards the floor so that you feel a stretch in your quads.4.) Hold onto this position for 15 to 30 seconds and the repeat with the opposite leg.'
    ),
    (
        'Stability Ball Reverse Crunch',
        'Core,Back,Glutes',
        'Strength',
        'Exercise Ball',
        'Steps :1.) For this exercise you will need a partner or a structure to hold your balance and you in place. 2.) It is important to make sure that you have core abdominal strength before performing this exercise.3.) Start off by lying with your back in the middle of an exercise ball, grabbing your partner s hand, finding your balance and straightening out your legs.4.) After finding your balance, curl your legs up towards your chest and squeeze tight with your abdominals.5.) Return back to the starting position and repeat for as many reps and sets as possible.Tips : 1.) It is important to take this workout/exercise slowly, as it is difficult to maintain and get your balance'
    ),
    (
        'Stability Ball Reverse Crunch',
        'Core,Glutes',
        'Strength',
        'Exercise Ball',
        '1.) Begin by laying on your back with your feet elevated bent at the knees and at a 90-degree angle with your arms down at your side holding an exercise ball between your heels and glutes.2.) When you have secured the exercise ball in between, press your arms firmly to the floor, lift up through your hips raising your glutes off of the floor.3.) Hold onto this position squeezing your glutes and abdominals then return back to the starting position.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Stability Ball Roll Down',
        'Core',
        'Strength',
        'Exercise Ball',
        'Steps :1.) Start by sitting on the floor with your knees bent and feet planted firmly on the floor, 2.) Hold an exercise ball in between your hands and arms raised over your head.3.) Once in position slowly roll down onto your back with control, keeping your feet planted on the ground and knees still bent, and the ball resting on the floor above your head.4.) Slowly, while squeezing your abs, bring the ball back up towards the ceiling and roll back up to the starting position.5.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Stability Ball Rollover',
        'Core,Back,Glutes',
        'Stretching',
        'Exercise Ball',
        '1.) Lay down on the floor with your legs extended and an exercise ball between your ankles.2.) Keep your hands firmly positioned at the sides of your glutes.3.) Using your abs, slowly bring the exercise ball up and over your body until the ball is resting on the floor above your head.4.) Hold this position for up to 15 seconds and then return back slowly to the starting position.'
    ),
    (
        'Stability Ball Roman Twist',
        'Core',
        'Strength',
        'Exercise Ball',
        '1.) Start by laying down on an exercise ball with your middle to upper back rested underneath the top of the ball with your feet planted firmly on the floor and arms extended out straight in front of you towards the ceiling.2.) As soon as you are in position, slowly rotate your upper body in one direction, keeping your arms in the straight position and lower body still firm.3.) Once you feel tension on your abs, hold for a few seconds then return back to the starting position and repeat in the opposite direction for as many reps and sets desired.'
    ),
    (
        'Stability Ball Shoulder Flexion',
        'Back,Core,Shoulders',
        'Strength',
        'Exercise Ball',
        'Steps :1.) Start by laying prone on an exercise ball with the ball positioned right under your bell button, keeping your legs straight behind you and arms resting in front of the ball.2.) After getting your balance, slowly raise one arm high in front of you and hold for a count, then return back to the starting position.3.) Repeat with the opposite arm and alternate between the two for as many reps and sets as desired.'
    ),
    (
        'Stability Ball Side Bend',
        'Core,Back,Glutes',
        'Stretching',
        'Exercise Ball',
        'Steps :1.) Begin by sitting down on a stability ball keeping your spine straight and your feet planted firmly on the floor, using your left arm as a support for your body.2.) Then stretch your right arm up and back so that your hand is elevated right above your head.3.) Lean slowly over to your left with your head towards your left shoulder as far as you can until you feel a stretch.4.) Hold for 15 to 30 seconds and then repeat with the opposite side.'
    ),
    (
        'Stability Ball Side Crunch',
        'Core,Back,Glutes',
        'Strength',
        'Exercise Ball',
        '1.) Lay on an exercise ball with the small of your back rested upon the top of the ball.2.) Begin to roll to one side of the ball until half of your body is on and the other half is off.3.) After finding your balance, curl your torso up, bringing your belly button in towards your spine and squeeze on your abdominals.4.) Return back to the starting position and repeat for as many sets and reps as possible.'
    ),
    (
        'Stability Ball Side Crunch',
        'Core,Back,Glutes',
        'Strength',
        'Exercise Ball',
        'Steps :1.) Start by lying on your side on an exercise ball next to a wall so that your feet are up against the wall.2.) Cross your arms at your chest making sure you are leaning on one side and that your arms aren t touching the ball.3.) While keeping your balance, curl your torso up to the side and squeeze your abdominals4.) Return back to the starting position and repeat for as many sets and reps as possible, then switch to the opposite side and repeat the same steps.'
    ),
    (
        'Stability Ball Side Stretch',
        'Core,Back,Glutes',
        'Stretching',
        'Exercise Ball',
        '1.) Start by sitting on a stability ball with your feet planted flat on the floor and your hands rested upon your knees.2.) Take one hand and bring it overhead to the opposite side of your body while the other hand rests firmly upon your pelvis keeping your lower body in place.3.) Stretch for as far and comfortably as you can and hold this stretch for a few seconds.4.) Return back to the starting position and perform the stretch on the opposite side.'
    ),
    (
        'Stability Ball Side-Lying Neck Stretch',
        'Core,Back,Glutes',
        'Stretching',
        'Exercise Ball',
        '1.) Begin by lying sideways on a stability ball with one arm hanging to the floor and the other resting on your hip.2.) Begin by lowering your head towards the floor while also pressing your upper shoulder blade down towards your hip.3.) Hold onto this position for 15 to 30 seconds and repeat with the opposite side.'
    ),
    (
        'Stability Ball Single-Leg Bridge',
        'Core,Glutes,Upper Legs',
        'Strength',
        'Exercise Ball',
        'Steps :1.) Start off by sitting on an exercise ball and slowly walk your feet out in front of you so that your back is laying on the top of the ball.2.) Make sure to keep your head and shoulders on the ball, forming a bridge position, keeping one foot on the ground  bent at a 90-degree angle and the other extended in the air.3.) Slowly lift your hips towards the ceiling, with your arms extended out to the sides of you, and hold this position for 15 to 20 seconds.4.) Return back to the starting position and repeat.5.) Switch legs and repeat for as many reps and sets as desired.'
    ),
    (
        'Stability Ball Single-Leg Crunch',
        'Core,Back,Glutes',
        'Stretching',
        'Exercise Ball',
        '1.) Begin by lying on an exercise ball with the small of your back, crossing your arms across your chest and slowly lifting one leg off of the floor.2.) As soon as you find your balance, curl your torso up and draw in your belly button towards your spine.3.) Squeeze with your abdominals and then slowly return back to the starting position repeating for as many reps and sets as possible.'
    ),
    (
        'Stability Ball Single-Leg Hip Rotation',
        'Core,Glutes,Back',
        'Stretching',
        'Exercise Ball',
        '1.) Start by rolling onto an exercise ball so that you are in a pushup position with your shins and ankles are rested right on top of the ball.2.) Take one leg and bring it off of the ball so that your hip, knee and ankle turn inward towards your pelvis.3.) Keep your shoulders square and turn your hip so that the twisting leg goes underneath the straight leg.4.) Return back to the starting position and repeat with the opposite leg for as many reps and sets as desired.'
    ),
    (
        'Stability Ball Standing Hamstring Stretch',
        'Upper Legs,Back,Upper Legs',
        'Stretching',
        'Exercise Ball',
        'Steps :1.) Start by standing in front of an exercise ball with one leg in front of the other, keeping both legs straight.2.) Lean towards the exercise ball while contracting your abs so that you are placing one hand on either side of the ball.3.) As soon as you feel a stretch hold the position for 15 to 30 seconds.4.) Return back to the starting position and repeat stretch with opposite legs.'
    ),
    (
        'Stability Ball Stork Stance',
        'Core,Glutes,Upper Legs',
        'Strength',
        'Exercise Ball',
        '1.) Start by standing up straight with both arms at your side then raising up one leg with knee slightly bent and holding an exercise ball between your hands.2.) After gaining your balance, slowly flex forward in your pelvis and extend the bent leg out behind you, keeping your body straight and parallel to the floor.3.) While extending back with your leg, raise your arms forward with the exercise ball and extend it out in front of your body.4.) Hold this position for a few seconds and then return back to the start.5.) Repeat for as many reps as desired.'
    ),
    (
        'Stability Ball Straight-Leg Crunch',
        'Core',
        'Strength',
        'Exercise Ball',
        '1.) Start off by laying on your back flat on the floor, placing your feet on top of an exercise ball with your legs straightened out.2.) Place your arms straight at your sides and contracting on your abdominals.3.) While squeezing lift your shoulder blades off of the floor and reach your arms out towards your feet pausing at the top and hold this position for a few seconds.4.) Return back to the starting position and repeat for as many reps and sets as desired.'
    ),
    (
        'Stability Ball Tricep Extension',
        'Triceps',
        'Strength',
        'Dumbbell',
        'Steps :1.) Start by laying on your back on an exercise ball with the top of the ball underneath your upper back, your feet firmly on the floor and holding a dumbbell in one hand.2.) Slowly raise your arm with the dumbbell straight up towards the ceiling and keeping the other arm at your side.3.) Bend your arm and bring the weight slowly down behind your head feeling a stretch in your tricep and hold for a count.4.) Then bring the weight back up to the starting position and repeat for as many reps and sets desired.'
    ),
    (
        'Stability Ball Tricep Stretch',
        'Triceps',
        'Stretching',
        'Exercise Ball',
        'Steps :1.) Start by sitting on an exercise ball with your back straight and feet firmly on the floor.2.) Slowly reach up with both of your hands, grasp them together, bring them over your head and touch your upper back feeling a stretch in your triceps.3.) Hold this position for 15 to 30 seconds and return to the start.4.) Repeat for as many reps and sets desired.'
    ),
    (
        'Stability Ball Trunk Rotation',
        'Core,Back',
        'Stretching',
        'Exercise Ball',
        '1.) To begin this exercise; take a stability ball and hold it straight out in front of your chest.2.) Then twist your upper body side to side, tightening your abdominals when reaching each side.3.) Repeat this exercise for as many repetitions as needed.'
    ),
    (
        'Stability Ball V-Up',
        'Core',
        'Strength',
        'Exercise Ball',
        'Steps :1.) Start by lying on a mat with your legs extended out towards the ceiling and slightly apart.2.) Extend your arms above your head with an exercise ball in your hands and in front of your chest.3.) Squeeze with your abs and reach up with your arms in between your legs and hold this position for a few seconds.4.) Return back to the starting position and then repeat for the desired number of reps and sets.'
    ),
    (
        'Stability Ball Walking Lunge',
        'Core,Glutes,Upper Legs',
        'Strength',
        'Exercise Ball',
        'Steps :1.) Start by standing straight up, feet shoulder width apart and holding an exercise ball in front of you.2.) Lunge forward by placing one foot in front of the other, then twisting your upper body with the exercise ball away from your bent legs.3.) With your back foot, return back to an upright position then switch sides and lunge forward.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Stability Ball Wall Circles',
        'Back,Shoulders',
        'Stretching',
        'Exercise Ball',
        'Steps :1.) Begin by standing up straight up with an exercise ball at chest level against a wall.2.) Step back from the wall, extend your arm forward and begin moving the exercise ball around in circles using your core.'
    ),
    (
        'Stability Ball Wall Squat',
        'Upper Legs,Back,Glutes',
        'Strength',
        'Exercise Ball',
        'Steps :1.) Start by setting up an exercise ball against the wall and leaning your back up against the ball so it is positioned in the middle of your body.2.) Slowly lower your body towards the ground so that your thighs are parallel with the ground and your upper back and head are rested on the exercise ball.3.) Hold for a count then return back to the starting position.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Stability Ball Weight Plate Pullover',
        'Triceps,Shoulders',
        'Strength',
        'Exercise Ball',
        'The pullover on a stability ball with a weight exercise uses a ball for core stabilization and help strengthen the back and hips.Steps :1.) Start off grabbing a weight plate and sit on an exercise ball with your feet planted firmly on the floor in front of you.2.) Lower your body so your upper abs are the only part of your body supported on the ball.3.) Bring the weight plate to your chest with your arms extend.4.) In an arcing motion raise the weight plate over and behind your head towards the floor until you start to feel a stretch in your core, back and chest muscles.5.) Hold the position for a count.6.) Return to starting position and repeat for as many reps and sets as desired.'
    ),
    (
        'Stability Ball Weight Plate Side Bend',
        'Core,Back,Glutes',
        'Strength',
        'Exercise Ball',
        'The weighted ball side bend exercise uses an exercise ball instead of a bench and conforms to your body better allowing for correct anatomical range of motion.Steps :1.) Start off lying one side of your torso, waist and hip against an exercise ball, positioning your feet on the floor or up against a wall for support.2.) With one hand hold a weight against the side of your head and place your free hand across your chest to steady yourself.3.) Raise your torso up off the ball by flexing your waist and hold this position for a count.4.) With controlled movements lower yourself back onto the ball.5.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Stability Ball Weighted Hyperextension',
        'Back,Upper Legs,Glutes',
        'Strength',
        'Exercise Ball',
        '1.) To begin this exercise; start off by lying face down on an exercise ball with your chest pressing up against it. 2.) Take a weight plate and grip it tightly holding it out slightly in front of your chest.3.) Using your lower back and pelvis, raise your chest up off of the ball and hold tightly for a few seconds as you reach the top position.4.) Then lower your chest back down towards the ball in the starting position.5.) Repeat this exercise for as many repetitions as needed.'
    ),
    (
        'Stability Ball Weighted Sit-Up',
        'Core',
        'Strength',
        'Exercise Ball',
        'Steps :1.) Start by setting up a bench horizontally or something to rest your feet against in front of an exercise ball and then sit down on the ball with a weight plate against your chest.2.) Then slowly lift the weight above your head and lower yourself down until your shoulder blades start to touch the ball and you feel a stretch in your lower abs.3.) Hold this position for a count then return back to the starting position.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Stability Ball Weighted Wall Squat',
        'Upper Legs,Glutes,Lower Legs',
        'Strength',
        'Exercise Ball',
        'Steps :1.) Start by setting up an exercise ball against the wall, leaning your back up against the ball so it is positioned in the middle of your body and holding a dumbbell in each hand.2.) Slowly lower your body towards the ground so that your thighs are parallel with the ground, so your upper back and head are rested on the exercise ball.3.) Hold for a count then return back to the starting position.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Stability Ball Wood Chop',
        'Core',
        'Strength',
        'Exercise Ball',
        'Steps :1.) Start off standing up straight with your feet shoulder width apart and your knees slightly bent.2.) Hold an exercise ball in your hands above your head to one side of your body in a motion that you are about to chop wood.3.) Squeeze on your abdominals and slowly bring the exercise ball down in a diagonal direction, pressing the exercise ball down to your opposite thigh.4.) Return back to the starting position and finish the rest of your repetitions on that side before switching over to your opposite side and repeating the exercise.'
    ),
    (
        'Staff Pose',
        'Core,Back,Upper Legs',
        'Stretching',
        'Body Only',
        'Steps :1.) Start off by sitting on the floor with your legs straight out in front of you with your back erect.2.) Take your fingertips and place them on the floor besides your glutes.3.) Straighten out your knees so the back of your knees are stretched out and keep your arms straight out.4.) Hold this position for 5 to 10 breaths and return back to the starting position.'
    ),
    (
        'Standing Half Moon',
        'Core,Back,Shoulders',
        'Stretching',
        'Body Only',
        '1.) Start in a straight standing position with both of your feet together and spine aligned.2.) Raise your arms over your head and side bend to one side without twisting your hip or your spine.3.) Hold this position for 5 to 10 breaths and then return back to the starting position and to the opposite side.'
    ),
    (
        'Standing Hamstring and Calf Stretch',
        'Upper Legs,Lower Legs',
        'Stretching',
        'Bands',
        'Steps :1.) Begin by taking either a band, rope or belt and wrapping it around one of your feet and place it forward.2.) Bend your back leg while keeping the front one straight and raise your front toes up off of the floor.3.) Lean forward with your upper body and then pull on the rope attached to your front foot to increase the stretch in your calf.4.) Hold this position for 15 to 30 seconds then return back to the starting position.5.) Repeat with the other foot and repeat this stretch for as many reps, sets and however long you desire.'
    ),
    (
        'Standing Opposition Reach',
        'Core,Glutes,Back',
        'Stretching',
        'Body Only',
        'Steps :1.) Start by standing up straight with your feet shoulder width apart and your arms at your sides.2.) Keeping your abs engaged, extend one leg straight out behind you stopping when your hips are fully extended and reach out with your opposite arm at the same time.3.) Maintain your balance and hold this position for 15 to 30 seconds then return back to the start.4.) Repeat with the opposite leg and arm for as many reps and sets as desired.'
    ),
    (
        'Standing Pelvic Tilt',
        'Back,Glutes',
        'Stretching',
        'Body Only',
        'Steps :1.) Start by standing up straight with your feet shoulder width apart and then slowly bend through your knees.2.) Slowly move your pelvis backward, pulling your navel in towards your spine, until you feel a stretch in your lower back.3.) Repeat for as many reps as you desire.'
    ),
    (
        'Standing Trunk Rotation',
        'Back',
        'Stretching',
        'Body Only',
        'Steps :1.) Start by standing up straight with your feet shoulder width apart and your hands rested upon your hips.2.) Slowly twist at your waist so that you feel a stretch in your middle to lower back.3.) Hold for 15 to 30 seconds, return to the starting position and repeat with the opposite side.4.) Repeat for as many reps and long as you desire.'
    ),
    (
        'Star Jump',
        'Upper Legs,Glutes,Lower Legs',
        'Strength',
        'Body Only',
        'Steps :1.) Start by standing up straight in a relaxed stance with your feet shoulder width apart and arms at your sides.2.) Then squat down halfway with and forcefully push up as high as possible, extending your entire body out and spreading your arms and legs away from your body.3.) Feel the full extension of your body then land with all of your limbs back in and absorb the landing through your legs.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Stationary Bike',
        'Cardio',
        'Cardio',
        'Machine - Cardio',
        'The stationary bike exercise utilizes an exercise to burn calories, tone the body, strengthen the legs, increase stamina and endurance as well as balance.'
    ),
    (
        'Step Machine',
        'Cardio',
        'Cardio',
        'Machine - Cardio',
        'A step machine utilizes the stair master machine or stepping machine to burn calories, tone the body, increase core and lower body strength, and improve endurance and stamina'
    ),
    (
        'Straddle Stretch',
        'Upper Legs,Lower Legs',
        'Stretching',
        'Body Only',
        'Steps :1.) Begin in a seated upright position with your legs extended out in front of you in a "V" shape and arms pointed out straight.2.) Place your hands on the floor and then lean forward as far as possible so that you feel a stretch in your hamstrings.3.) Hold this position for 15 to 30 seconds then return back to the start.4.) Repeat for as many reps, sets and however long you desire.'
    ),
    (
        'Straight Leg Sit-Up',
        'Core,Back,Lower Legs',
        'Strength',
        'Body Only',
        '1.) Start by laying on the floor with your legs straight out in front of you with one foot on top of the other along with one arm pointed up towards the ceiling and the other hand used to stabilize your head.2.) Once in position, lift your shoulders off of the floor until you feel a contraction in your abs, hold for a few seconds then return back to the starting position.3.) Repeat for as many reps and sets desired and then switch with the opposite foot and extended arm.Tips :1.) Make sure you are squeezing with your abs and not pushing up on your neck'
    ),
    (
        'Sun Salutation',
        'Core,Back,Upper Legs',
        'Stretching',
        'Body Only',
        '1.) Start by standing up straight with feet shoulder width apart, putting your palms together and grounding yourself through your feet.2.) Extend your arms skyward and fold your body forward and place your hands on the floor.3.) Then either step or jump back with both feet into a plank position, creating a straight line with your body from your heels to your shoulders.4.) Bring your shoulders forward in front of your wrist and lower your body to about 2 inches off of the floor.5.) Continue to lower your body to the floor and then inhale as you press your hands to the floor and curve up your chest into a Cobra pose.6.) Tuck your toes and lift your hips up high into a Downward Facing Dog, holding for 5 to 10 breaths and then return back up to the standing position.'
    ),
    (
        'Superman',
        'Back',
        'Stretching',
        'Body Only',
        'The superman exercise is great for the lower stretching and strengthening back and core muscles.1.) Start by lying flat on your stomach with your arms stretched out in front of you.2.) Slowly raise your arms and legs up off of the floor and hold onto this position for a few seconds until you feel a tight stretch in your core and back muscles.3.) Return back to the starting position.'
    ),
    (
        'Supine Heel Touches',
        'Core',
        'Strength',
        'Body Only',
        'Steps :1.) Begin by laying on your back on the floor, keeping your knees bent, feet grounded and arms by your sides.2.) Slowly reach down towards your right heel with your right arm as far as possible until you feel a stretch in your right oblique.3.) Return to the starting position and repeat in the opposite direction.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Supine Knee Raise',
        'Core',
        'Strength',
        'Body Only',
        'Steps :1.) Start by laying with your back flat on the floor, arms at your side and feet extended out straight in front of you.2.) Slowly lift both knees up off of the floor and pull them towards your chest.3.) Slowly pull your knees up as high as you can towards your chest until you feel a stretch in your abs4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Swimming',
        'Cardio',
        'Cardio',
        'Body Only',
        'Swimming is a great way to tone your body and improve overall fitness.It focuses upon stamina, endurance, core and full body strength, coordination, and burn fat.'
    ),
    (
        'T Bar Prone Row',
        'Back,Shoulders,Biceps',
        'Strength',
        'Machine - Strength',
        '1.) To begin this exercise; set up a T-Bar Row Machine with the weight required and lay face down upon the pad, grabbing the handles in front of you.2.) Pull the bar off of the rack as you tighten your back and squeeze as much as you can until you reach the top position holding onto it for a few seconds. 3.) Keep your chest pressed up against the pad the entire exercise.4.) Return back to the starting position.5.) Repeat this exercise for as many repetitions as needed.'
    ),
    (
        'T Bar Row',
        'Back,Biceps',
        'Strength',
        'Barbell',
        'The T-Bar Row exercise is good for helping build strength and the major muscles of your back.1.) Start off by placing your feet at each side of the T-Bar Machine, keeping your knees slightly bent, abs tight and grabbing the handles of the machine with a narrow grip.2.) Slowly bend at your waist so that your torso is almost parallel with the floor as this will be your starting position.3.) From this position, pull the bar up towards your chest in a slow and controlled manner and continue for as high as you are able to.4.) Once you reach the top position, hold for a count, squeezing your back muscles and return back to the starting position.Tips : 1.) While performing this exercise keep your elbows close to your body.'
    ),
    (
        'Table Pose',
        'Core,Back,Shoulders',
        'Stretching',
        'Body Only',
        'Steps :1.) Start off by sitting on the floor with your palms placed firmly on the ground behind you2.) Then take your hands and walk them away from your glutes and lift your hips up in the process.3.) Continuously lift up your hips and push your chest straight up to the ceiling.4.) Your knees and head should be horizontally at level in the final position like a table.5.) Hold for 5 to 10 breaths and return back to the starting position.'
    ),
    (
        'Three Bench Dip',
        'Triceps,Chest,Shoulders',
        'Strength',
        'Bench',
        'Steps :1.) Start by setting up 3 benches, one horizontally in front of you and two vertically positioned at your sides for this exercise.2.) Place your hands at the end of the two vertical benches while your feet are extended out and heels are resting in the middle of the horizontal bench.3.) Push up with your arms so that your body is elevated and arms straight, then slowly lower your body down until your elbows are at shoulder level and hold for a count.4.) Return back to the starting position.'
    ),
    (
        'Toe Touch Stretch',
        'Upper Legs,Lower Legs',
        'Stretching',
        'Body Only',
        'Steps :1.) Start by standing up straight with your feet hip-width apartr and arms by your side.2.) Slowly bend at your waist, keeping a slight bend in your legs straight, and let your body hang down in front of you, hands reaching down towards the ground.3.) Hold onto this position for 15 to 30 seconds then return back to the start.4.) Repeat for as many reps, sets and however long you desire.'
    ),
    (
        'Toe Touches',
        'Core,,',
        'Strength',
        'Body Only',
        '1.) Start off lying down with your back flat on an exercise mat or the floor, your arms lying across your sides with palms facing down and legs touching each other as this is your starting position.2.) Slowly raise your legs till they are pointing in the air and then move your arms out so that they are fully extended at a 45-degree angle3.) Make sure to keep your back flat on the floor, touching your toes with your fingers and squeezing your abdominals in the motion.4.) Repeat for desired sets and repetitions.'
    ),
    (
        'Towel Tricep Extension',
        'Triceps',
        'Strength',
        'Others',
        'The standing towel triceps extension is an exercise that requires a partner and uses manual resistance or your body s own weight to build the tricep muscle1.) Start by standing with your feet shoulder width apart, your back straight and your abs drawn in.2.) Hold a towel or rope facing up behind and in back of your head.3.) Have a partner hold the towel tight during the exercise so the resistance is constant.4.) Lower your forearms down until they reach your biceps, then slowly raise your arms back up to starting position.5.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Treadmill Running',
        'Cardio',
        'Cardio',
        'Machine - Cardio',
        'Treadmill running, just like regular running, uses the treadmill exercise equipment to burn calories, tone the body, increase stamina and endurance and is one of the most common forms of cardio exercises'
    ),
    (
        'Triangle Pose',
        'Core,Back,Upper Legs',
        'Stretching',
        'Body Only',
        '1.) Start off by standing up straight and keeping your spine erect.2.) Step laterally with your left foot until your feet are about 3 feet apart and keep your left foot at a 90 degree angle to the front foot.3.) Take your right foot and turn it to the front, lifting your arms to shoulder level and side bending to the right.4.) Reach up with your left hand while your right hand rests on your right foot, creating a vertical line from the top of your left hand to your right foot.5.) Hold this position for 5 to 10 breaths and return back to the starting position.'
    ),
    (
        'Tricep Push-Up',
        'Triceps,Chest',
        'Strength',
        'Body Only',
        'The close triceps pushup exercise is a version of the push up that isolates the tricep muscles.1.) Start by kneeling down on the floor or a mat, placing your hands with thumbs together and raise your body up on your toes.2.) Draw your abs in and keep your back and neck in a straight line.3.) Slowly lower your body towards the floor until you are nearly touching the ground.4.) In a controlled manner raise your body back up to the starting position.5.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Tricep Side Stretch',
        'Triceps,Shoulders',
        'Stretching',
        'Body Only',
        'Steps :1.) Start by standing up straight with your feet shoulder width apart and your arms rested at your sides.2.) Then bring your right arm across your body and above your left shoulder.3.) With your opposite left hand, hold the elbow of your right arm until you feel a stretch in your tricep, holding for about 15 to 30 seconds.4.) Return back to the starting position and repeat for as many sets and however long you desire.'
    ),
    (
        'Tricep Stretch',
        'Triceps,Triceps,Shoulders',
        'Stretching',
        'Body Only',
        'Steps :1.) Stand straight up with your arms at your sides and feet close together.2.) Reach up with both hands and extend them up and behind your head.3.) Then with one of the hands, reach over and press upon the other hand, feeling an extension and stretch in your triceps.4.) Hold onto this stretch for 15 to 30 seconds and repeat with the opposite arm.'
    ),
    (
        'Tuck Crunch',
        'Core',
        'Strength',
        'Body Only',
        'Steps :1.) Start by lying down with your back on the floor or an exercise mat, with your arms lying across your sides and palms facing down.2.) Once in position cross your legs at your ankles and slowly elevate your legs up in the air until your thighs are perpendicular to the floor.3.) Next cross your arms on your chest as if you were doing sit ups and perform crunches while maintaining your leg position.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Turtle Pose',
        'Core,Back,Glutes',
        'Stretching',
        'Body Only',
        '1.) Start of by resting on your hands and knees and keeping your knees beneath your hips.2.) Using your glutes sit back slowly onto your heels and lower your forehead down to the floor, placing your arms beside your body right next to your feet.3.) Hold this position for 5 to 10 breaths and return back to the starting position.'
    ),
    (
        'Twist Opening',
        'Core,Back,Chest',
        'Strength',
        'Body Only',
        '1.) Start by laying on your chest with your arms and legs apart forming a star.2.) Keeping your right hand and arm attached to the floor, move your left arm up and over your left hip.3.) Allow both of your knees to bend slightly and roll over onto the sides of your feet.4.) Turn your head to look behind you as you lay your left arm right next to the side of your head.5.) Hold this position for 1 to 2 minutes and then return back to the starting position and repeat with the opposite side.'
    ),
    (
        'Upper Back Stretch',
        'Back',
        'Stretching',
        'Body Only',
        'Steps :1.) Start by standing up straight with your feet shoulder width apart and arms to your sides.2.) Raise your hands out in front of you, clasp your fingers together and stretch your lower back.3.) Hold this position for 15 to 30 seconds then return back to the starting position.4.) Repeat for as many reps and as long as you desire.'
    ),
    (
        'Upper Body Chair Stretch',
        'Shoulders,Biceps,Chest',
        'Stretching',
        'Bench',
        'Steps :1.) Start by sitting on a chair with your feet planted on the floor and your arms rested upon your thighs.2.) Reach back with your hands, keeping your arms straight, and grip the back of the chair.3.) Slowly lower your upper body forward, still keeping your arms straight, until your head is between your knees and you can feel a stretch within your shoulders.4.) Hold onto this stretch for 15 to 30 seconds and then return back to the starting position.5.) Repeat for as many reps and however long as desired.'
    ),
    (
        'Upward Facing Bow Pose',
        'Core,Back,Shoulders',
        'Stretching',
        'Body Only',
        '1.) Start off by laying on your back with your knees bent up, placing your palms facing out near your shoulders.2.) Putting the weight of your body on your heels, peel your back off of the floor and lift up through the hips.3.) As your hips are raised up off of the ground, put the pressure on the palms of your hands and straighten the arms to lift into the full position.4.) Once at this position press your inner thighs closer together and push your groin up towards the ceiling.5.) Hold this position for a few seconds and return back to the starting position.'
    ),
    (
        'Upward Facing Dog',
        'Back,Back,Glutes',
        'Stretching',
        'Body Only',
        'Steps :1.) Start off by laying face down with your forehead touching the floor and keeping your feet close together.2.) Keep your fingertips at shoulder level, raise your elbows up in the air then slide your shoulder blades down towards your hips.3.) Then straighten out your arms, lift up your head, shoulders and chest up towards the ceiling.4.) Hold this position for 5 to 10 breaths and return back to the starting position.'
    ),
    (
        'Upward Stretch',
        'Shoulders,Back,Chest',
        'Stretching',
        'Body Only',
        'Steps :1.) Start off standing up straight with your feet shoulder width apart and your arms rested at your sides.2.) Extend both of your hands up above your head, touching your palms together and then push your hands up and back keeping your back straight through the motion.3.) Hold this position for 15 to 30 seconds, feeling a stretch in your shoulders, then return back to the starting position.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'V Bar Pull-Up',
        'Back,Biceps,Shoulders',
        'Strength',
        'Pullup Bar',
        'The V-Bar Pull Up exercise is a more advanced version of the standard Chin Up in which the closer grip provides more development of the shoulders.1.) Start by grasping the pull up bar with an overhand grip so that your palms are facing forward.2.) Once you have a hold of the bar, let your body hang keeping your arms straight, as this will be your starting position.3.) Then slowly pull yourself up so that your chin is higher than the bar and once in the top position hold for a count.4.) Using a controlled motion, lower yourself  back down to the starting position.Tips : 1.) Keep your legs in line with your torso throughout the entire exercise.'
    ),
    (
        'V-Up',
        'Core',
        'Strength',
        'Body Only',
        'Steps :1.) Start by laying on a mat with your legs extended out towards the ceiling and slightly apart.2.) Extend your hands above your head and in front of your chest.3.) Squeeze with your abs and reach up with your arms in between your legs and hold this position for a few seconds.4.) Return back to the starting position and then repeat for the desired number of reps and sets.'
    ),
    (
        'Walking',
        'Cardio',
        'Cardio',
        'Machine - Cardio',
        'Walking, a form of cardio exercise, can be performed outside or on a treadmill and focuses upon burning calories, strengthening the core and leg muscles and increasing overall endurance and stamina'
    ),
    (
        'Wall Calf Stretch',
        'Lower Legs,Upper Legs',
        'Stretching',
        'Body Only',
        'Steps :1.) Begin by standing in front of a wall, about a few feet away, placing one foot in front of your body as you lean towards the wall.2.) As you lean closer with your body, rest your hands up against the wall keeping your heels, hips and head in a straight line as well as feet flat on the floor.3.) Extend forward until you feel a stretch in your calves and then hold for 15 to 30 seconds.4.) Return to the starting position and repeat for as many reps, sets and however long you desire.'
    ),
    (
        'Warrior 2 Pose',
        'Core,Glutes,Upper Legs',
        'Stretching',
        'Body Only',
        '1.) Begin by laterally stepping with your left leg until both legs are about 3 feet apart from each other. 2.) Then lunge into the right leg to about a 90-degree angle at the joint keeping your left leg straight.3.) Extend both of your arms straight out so that they are horizontal along the shoulder line.4.) Hold this position for 5 to 15 seconds, return back to the starting position, alternate sides and repeat.'
    ),
    (
        'Warrior 3 Pose',
        'Core,Back,Upper Legs',
        'Stretching',
        'Body Only',
        'Steps :1.) Begin this pose in the Warrior 1 pose with your right leg in front of your left, toes facing forward and your left leg extended behind you.2.) Keep you arms extended towards the sky with your abs tight and shoulder blades relaxed.3.) Take a deep breath in and on your exhale fold your body over your front leg, lowering your ribs towards your tight.4.) Straight out your right leg and lift back with your left leg so that it is parallel with the floor, head looking straight and forward.5.) With your hands, keep them extended out forward during this pose above your head, straight out in front of your body.6.) Hold this position for 5 to 10 breaths and return back to the starting position.'
    ),
    (
        'Warrior Pose',
        'Core,Back,Upper Legs',
        'Stretching',
        'Body Only',
        '1.) Start off with stepping laterally with your left leg until both legs are 3 feet apart.2.) Then take your left leg at a 45-degree angle to your front foot and lunge into the right leg.3.) Keep the left leg straight and turn your glutes and hips in the direction of the right and raise both arms overhead in a full extension.4.) Hold this post for about 5 to 10 breaths and then switch sides.'
    ),
    (
        'Weight Plate Front Raise',
        'Shoulders',
        'Strength',
        'Weight Plate',
        'Steps :1.) To begin this exercise; start off holding a barbell weight plate in your hands at your waist and standing up straight. 2.) Keep your palms facing inwards towards each other.3.) Then slowly move the plate up and out until it has reached your shoulder level and hold onto it for a few seconds squeezing your shoulders tightly.4.) Return back to the starting position.5.) Repeat this exercise for as many repetitions as needed'
    ),
    (
        'Weight Plate Hand Squeeze',
        'Forearms',
        'Strength',
        'Weight Plate',
        'Steps :1.) Start by standing up straight with your feet shoulder width apart, arms at your side and one arm holding a weight plate at hip level.2.) Lower the weight down so that your fingers are nearly extended but you are still able to hold onto the weight and hold this position for a count.3.) Raise the plate back up to the starting position and repeat for as many reps and sets as desired.'
    ),
    (
        'Weight Plate High Front Raise',
        'Shoulders',
        'Strength',
        'Weight Plate',
        'Steps :1.) Start by standing up straight with your feet shoulder width apart and holding a weight plate together with both hands at waist level.2.) Slowly, while squeezing your shoulders, elevate the weight plate above your head and hold for a count.3.) Return back to the starting position.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Weight Plate Neck Extension (Prone)',
        'Shoulders',
        'Strength',
        'Weight Plate',
        'Steps :1.) To begin this exercise; start off by lying face down on a flat bench holding a weight plate behind your head.2.) With the plate rested behind your head, slowly lower your neck down squeezing your shoulders and keeping the plate pressed.3.) Then return back up to the starting position.4.) Repeat this exercise for as many repetitions as needed'
    ),
    (
        'Weight Plate Neck Flexion (Supine)',
        'Shoulders',
        'Strength',
        'Weight Plate',
        '1.) To begin this exercise; start off by lying face up with your back on a flat bench holding a weight plate in front of your head.2.) With the plate rested on the front your head, slowly lower your neck down squeezing your shoulders and keeping the plate pressed lightly to the head.3.) Then return back up to the starting position.4.) Repeat this exercise for as many repetitions as needed'
    ),
    (
        'Weight Plate One-Arm Shrug',
        'Back,Shoulders,Forearms',
        'Strength',
        'Weight Plate',
        'Steps :1.) Start by standing up straight with your feet shoulder width apart and a slight bend in your knees, holding a weight plate in one hand and letting your arms hang down at your sides.2.) Once you have secured the weight plate in place, slowly shrug your shoulder as high as you can and hold the position for a count.3.) Return back to the starting position and repeat for as many reps and sets as desired.'
    ),
    (
        'Weight Plate Pinch',
        'Forearms',
        'Strength',
        'Weight Plate',
        '1.) To begin this exercise; start off by taking two weight plates and placing them together.2.) Take your fingers and thumb and squeeze the plates together, holding the position for as long as possible.3.) Repeat this exercise for as many repetitions as needed.'
    ),
    (
        'Weight Plate Reverse Curl',
        'Biceps,Forearms',
        'Strength',
        'Weight Plate',
        'The reverse plate curl exercise uses free weight plates to isolate the bicep and build bigger arms.1.) Start by standing with your feet shoulder width apart, your knees slightly bent and your abs drawn in.2.) Grab a plate in your hands with an overhand (palms down) grip at the 11:00 and 1:00 o clock position.3.) Keeping your elbows and arms at your side, curl the slowly up towards your head, squeezing and isolating the bicep muscle.4.) Slowly return to the starting position.5.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Weight Plate Rotation',
        'Core',
        'Strength',
        'Weight Plate',
        '1.) Lie on a mat or on the floor.2.) While sitting up extend your knees out with a slight bend.3.) Your feet should be a few inches off the ground.4.) Grab a plate and rotate from one side of your chest to the other side while maintaining your body position.  5.) Repeat for the desired amount of reps.'
    ),
    (
        'Weight Plate Russian Twist',
        'Core,Glutes,Back',
        'Strength',
        'Weight Plate',
        '1.) Start off with your back on the floor and your feet under a bench or have a partner holding them.2.) Bend your knees and lift your upper body off of the floor as if you were in a final sit up position, then stick your arms out in front of your chest with your hands together.3.) When you are in place, twist your torso to the right while exhaling, holding on and squeezing your abs for a few seconds as you reach the side.4.) Move back to the starting position as you exhale, then back in the starting position, repeat the exercise in the alternate direction.5.) Repeat this exercise for as many repetitions as needed.'
    ),
    (
        'Weight Plate Shrug',
        'Back,Shoulders,Forearms',
        'Strength',
        'Weight Plate',
        'Steps :1.) Start by standing up straight with your feet shoulder width apart and a slight bend in your knees, holding a weight plate in each hand and letting your arms hang down at your sides.2.) Once you have secured the weight plates in place, slowly shrug your shoulders as high as you can and hold the position for a count.3.) Return back to the starting position and repeat for as many reps and sets as desired.'
    ),
    (
        'Weight Plate Sissy Squat',
        'Upper Legs,Glutes,Lower Legs',
        'Strength',
        'Weight Plate',
        'Steps :1.) Start in an upright position right next to a power rack or any secure post/object with your feet shoulder width apart, one hand grabbing the object and the other holding a weight plate or dumbbell to your chest.2.) Making sure you have a firm grip on the object you are holding onto, bend at your knees and lower your body towards the ground in a squat position.3.) Stop when your body creates a 90-degree angle and hold for a count, then return back to the starting position by using your thighs to elevate your body back up.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Weight Plate Squat',
        'Upper Legs,Lower Legs,Glutes',
        'Strength',
        'Weight Plate',
        'Steps :1.) To begin this exercise; start off by taking two flat benches and positioning them shoulder length apart and standing on top of them with a weighted plate attached to your torso right above the opening between both benches.2.) Then bend at your knees keeping a straight posture with your back straight and chest out continuing down until your upper legs and knees form a 90-degree angle and the weight plate falling in between both of the benches. Hold for a few seconds.3.) Use your lower legs as well as your heels to push yourself back up.4.) Return back to the starting position.5.) Repeat this exercise for as many repetitions as needed'
    ),
    (
        'Weighted Bench Dip',
        'Triceps',
        'Strength',
        'Bench',
        '1.) Sit on inside of one of two benches placed parallel, slightly less than leg s length away.2.) Place hands on edge of bench. Straighten arms, slide rear end off of edge of bench and position heels on adjacent bench with legs straight. 3.) Perform a dip lowering your self while inhaling.  4.) Lift your self back up and exhale at same time.5.) Repeat for the desired amount of reps.'
    ),
    (
        'Weighted Crunch',
        'Core',
        'Strength',
        'Weight Plate',
        '1.) Start by laying flat on your back on the ground and feet rested at a 90 degree angle on a bench.2.) Hold a weight to your chest or extended out in front of you, then slowly elevate your shoulders off of the floor while your lower back keeps you positioned on the floor.3.) As soon as you feel tension in your abs, squeeze and hold for a few seconds, release and return back to the starting position.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Weighted Decline Rotation',
        'Core',
        'Strength',
        'Weight Plate',
        '1.) Start by laying on a decline bench with a weight plate crossed in between your arms over your chest and feet secured in the foot rests.2.) Slowly curl up with your abs and pause as soon as you reach the top.3.) As soon as you reach this position rotate to one direction, then return back to the center and then back down.4.) Repeat these steps but to the opposite direction.5.) Perform this exercise for as many reps and sets as desired.'
    ),
    (
        'Weighted Drop Push-Up',
        'Chest',
        'Strength',
        'Bench',
        'Steps :1.) Start by positioning two boxes about 2 to 3 feet apart from each other and positioning yourself in a push-up position between them and weight plate on your back.2.) Support yourself by placing your hands on the boxes and then once in position, drop down from the platforms and catch yourself with your arms in a push up position on the floor.3.) Explosively force yourself back up off of the ground back onto the platforms and repeat for as many reps and sets as desired.'
    ),
    (
        'Weighted Hanging Knee Raise',
        'Core,Forearms',
        'Strength',
        'Pullup Bar',
        '1.) Start by standing in front of a pull up bar with a dumbbell in between your legs.2.) Grab the pull up bar and lift your body up off of the floor with the dumbbell pressed between your feet so that it is secure for your motion up.3.) Slowly raise your knees upward so that they head towards your chest until you feel a stretch in your abs.4.) Hold this position for a count then return back to the start.5.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Weighted Pull-Up',
        'Back,Biceps',
        'Strength',
        'Pullup Bar',
        'Steps :1.) Start by positioning yourself in front of a pull-up bar with a weight attached to a dip belt that is secured around your waist.2.) Grab the pull-up bar with an overhand grip and slowly pull yourself up squeezing your back muscles.3.) Hold this position for a count then return back to the start.4.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Weighted Side Bend',
        'Core',
        'Strength',
        'Weight Plate',
        'Steps :1.) Begin by standing up straight with your one arm to your side holding a weight plate and the other rested behind you with palm placed on your head.2.) Then slowly bend to one side of your body, grasping onto the weight, until you feel a tension on your obliques and hold for a few seconds.3.) Return back to the starting position and complete the number of reps desired and then switch to the opposite side.'
    ),
    (
        'Weighted Side Touch',
        'Core',
        'Strength',
        'Weight Plate',
        'Steps :1.) Start by placing a bench horizontally in front of you or something that you can rest your feet under, then lay with your back flat on the floor with your feet underneath the support.2.) Grip either a weight plate or dumbbell and hold it out in front of you.3.) Then lift your upper body off of the floor so your shoulders and back are elevated.4.) Once in position twist from your core from side to side so that you feel a stretch in your abs.5.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Weighted Three Bench Dip',
        'Triceps,Chest,Shoulders',
        'Strength',
        'Weight Plate',
        'Steps :1.) Start by setting up 3 benches, one horizontally in front of you and two vertically positioned at your sides for this exercise.2.) Place your hands at the end of the two vertical benches while your feet are extended out and heels are resting in the middle of the horizontal bench, then place a weight plate on your hips and this will be your starting position.3.) Push up with your arms so that your body is elevated and arms straight, then slowly lower your body down until your elbows are at shoulder level and hold for a count.4.) Return back to the starting position.'
    ),
    (
        'Weighted Tricep Dip',
        'Triceps,Chest,Shoulders',
        'Strength',
        'Machine - Strength',
        'Steps :1.) Start by setting up a weighted belt around your waist with the amount of weight that you can perform for this exercise.2.) Elevate yourself off of the platform so that you are being held up by your upper body and the weight is dangling towards the floor.3.) Slowly lower yourself toward the floor, keeping your body as upright as possible.4.) Lower yourself until your elbows are at shoulder level, squeezing your triceps and hold for a count.5.) Return back to the starting position.6.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Weighted Trunk Rotation',
        'Core',
        'Strength',
        'Weight Plate',
        '1.) Stand straight up with your feet shoulder width apart and holding a weight plate in your arms up against your chest.2.) Rotate your torso to the right without twisting your feet, then rotate your body to the left and contract your abs.3.) Repeat for as many reps and sets as desired.'
    ),
    (
        'Wide Leg Stretch',
        'Core,Glutes,Upper Legs',
        'Stretching',
        'Body Only',
        '1.) Start off by standing feet wide apart and the outside of your feet parallel to each other.2.) Take your hands, bring them to your hips and let your back lower and bend down towards the ground.3.) Place both palms on the floor in front of you shoulder width apart and walk them backward into your body as you deepen your stretch.4.) Return back to the starting position by bringing your hands back onto your hips, then firming up your glutes and ab muscles.5.) Repeat for as many times as you would like.'
    ),
    (
        'Windshield Wipers',
        'Core',
        'Strength',
        'Pullup Bar',
        'Steps :1.) Start by grabbing onto a pull up bar or hanging grip and raising your body off of the floor.2.) Lift up through your abdominals so that your back is parallel with the floor, keeping your knees bent and feet pointed forward.3.) Once you find your balance, swing your knees to one side and feel a pull on your obliques, then return back to the center and continue to the opposite direction.4.) Return back to the starting position and repeat this motion for as many reps as you are able to perform. 5.) Return back to the starting position and slowly lower yourself back to the ground to prevent a muscle pull.6.) Repeat for as many reps and sets desired.Tips :1.) This is an advanced oblique and abdominal exercise that requires you to strengthen your abs first so that you prevent from pulling a muscle performing this workout.'
    ),
    (
        'World s Greatest Stretch',
        'Upper Legs,Glutes,Lower Legs',
        'Stretching',
        'Body Only',
        'Steps :1.) Start in a lunge position with your front foot flat in front of you with knee bent, and your back foot extend out with your knee almost touching the floor and toes on the floor.2.) Hold onto this position for 15 to 30 seconds, then place the arm that is on the same side as the front leg on the ground with your elbow rested next to your front foot.3.) Place the other hand on the ground parallel to the front leg to support your bodyweight during the stretch and hold this position for 15 to 30 seconds.4.) Follow this up with placing both hands next to your front foot and raise your toes off of the ground and straighten out your leg.5.) Hold this position for 15 to 30 seconds while still keeping the back leg extended and knee bent.6.) Return to the starting position and repeat for as many reps, sets and however long you desire.'
    ),
    (
        'Wrist Circles',
        'Forearms',
        'Stretching',
        'Body Only',
        'Steps :1.) Start by standing up straight with your feet shoulder width apart and your arms at your sides.2.) Elevate your hands so that they are at about hip level and fully extended out in front of you.3.) Begin to rotate your wrists in a forward circular motion, keeping the rest of your body still.4.) Repeat for as many repetitions as desired.'
    ),
    (
        'Wrist Roller',
        'Forearms',
        'Strength',
        'Others',
        '1.) To begin, stand straight with feet shoulder length apart and grab a wrist roller using a palms down grip. 2.) Slowly lift both arms until they are fully extended and parallel to the floor in front of you. 3.) Rotate one wrist at a time in an upward motion to bring the weight up to the bar by rolling the rope around the roller.4.) Once the weight has reached the bar, slowly begin to lower the weight back down by rotating the wrist in a downward motion to the starting position.5.) Repeat for the desired number of reps and sets.'
    ),
    (
        'Yoga',
        'Cardio',
        'Cardio',
        'Body Only',
        'Yoga is a form of exercise that uses slow movements and stretching to increase flexibility, balance and is even good for relieving stress and relaxing.'
    ),
    (
        'Z Pose',
        'Core,Glutes,Upper Legs',
        'Stretching',
        'Body Only',
        '1.) Begin by kneeling on the floor on a mat, with knees shoulder-width apart.2.) Take your arms and stretch them forward parallel to the floor.3.) Lean backwards with your hips so that your glutes are underneath the heels of your feet forming the "Z" shape.4.) Hold this position for a few seconds and return back to the starting position.'
    );