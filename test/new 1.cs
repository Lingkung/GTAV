using System.Threading;

public partial class MainForm : Form
{
     Thread sfThread;
     Thread eiThread;

      bool isRun = true;
      readonly object stateLock = new object();
     
      double StartPoint;
      double StartPoint2;
     
      string remainingSecoundS;
      string remainingEi;
     
      bool flag1 = false;
      bool flag2 = false;
     
      const string CONST_DAY = "Sunday";
      const string CONST_FIXEDTIME = "01:00:00";

      private void MainForm_Load(object sender, EventArgs e)
     {}
     
     private void MainForm_FormClosed(object sender, FormClosedEventArgs e)
     {
            isRun = false;
     }
    
     private void btnScheStop_Click(object sender, EventArgs e)
    {
        isRun = false;
    }
     
    private void btnScheStart_Click(object sender, EventArgs e)
    {
            try
            {
                isRun = true;
              
                sfThread = new Thread(delegate() { ProcessA("Monday", "06:55:00"); });
                sfThread.IsBackground = true;

                eiThread = new Thread(delegate() { ProcessB("Tuesday", "06:03:00"); });
                eiThread.IsBackground = true;

                sfThread.Start();
                eiThread.Start();
              
            }
            catch (Exception ex)
            {}
      }

      void ProcessA(string day, string time)
        {
           //พอถึงเวลาที่กำหนดไว้ เช่นวันจันทร์ เวลา 06:55:00 เเล้วจะให้ไปเรียก method ใดมาทำงาน
           MethodInvoker methordDelegate = new MethodInvoker(SyncA);
          
            //คำนวนว่า เหลืออีกกี่ second จึงจะถึงเวลาที่ต้อง run schedule
            StartPoint = CalcDateDiff(day, time, flag1);

            do
            {
                try
                {
                     //lock ว่าให้มี thread เดียวเท่านั้นที่เข้าไปเเก้ไข หรือเข้าถึงตัวเเปรเหล่านั้นได้
                    lock (stateLock)
                    {
                        remainingSecoundS = string.Format("\r\nSecoundSoft remaining in {0} sec", StartPoint.ToString());
                    }
    
                    if (StartPoint <= 0)
                    {
                       //reset time
                       lock (stateLock)
                        {
                            flag1 = true;

                            StartPoint = CalcDateDiff(day, time, flag1);
                        }
                       
                        //สั่งรัน job ที่ต้องการ
                        Invoke(methordDelegate);
                    }
                    else
                    {
                        System.Threading.Thread.Sleep(new TimeSpan(0, 0, 5));
                    }

                    StartPoint = StartPoint - Convert.ToDouble(5);
                }
                catch (Exception ex)
                {
                    log.Error("ProcessSecoundSoft Error:" + ex.Message.ToString());
                }
            }
            while (isRun);
        }

       void ProcessB(string day, string time)
        {
            MethodInvoker methordEi = new MethodInvoker(SyncB);

            StartPoint2 = CalcDateDiff(day, time, flag2);

            do
            {
                try
                {
                    lock (stateLock)
                    {
                        remainingEi = string.Format("\r\nEi remaining in {0} sec", StartPoint2.ToString());
                    }

                    if (StartPoint2 <= 0)
                    {
                        lock (stateLock)
                        {
                            flag2 = true;

                            StartPoint2 = CalcDateDiff(day, time, flag2);
                        }

                        Invoke(methordEi);
                    }
                    else
                    {
                        System.Threading.Thread.Sleep(new TimeSpan(0, 0, 5));
                    }

                    StartPoint2 = StartPoint2 - Convert.ToDouble(5);
                }
                catch (Exception ex)
                {}
            }
            while (isRun);
        }

        private void SyncA()
        {
            //("***** Begin A***** ");

            // you job goes here
              ...
              ..
              .

            //("***** End  A*****" + "\r\n");
        }

        private void SyncB()
        {
            //("***** Begin B ***** ");

            // you job goes here
              ...
              ..
              .

            //("***** End  B*****" + "\r\n");
        }

        private int CalcDateDiff(string arg_day, string arg_fixedTime, bool flag)
        {
            int length = 0;
            string day;
            string fixedTime;
            DateTime getDate = System.DateTime.Now;
            double timeSpan;

            day = arg_day.Trim();
            fixedTime = arg_fixedTime.Trim();

            if (string.IsNullOrEmpty(day))
                day = CONST_DAY;

            if (string.IsNullOrEmpty(fixedTime))
                fixedTime = CONST_FIXEDTIME;

            //How many days from now
            while (getDate.ToString("U").ToLower().Contains(day.ToLower()) == false)
            {
                getDate = getDate.AddDays(1);
                length++;
            }

            if (flag == false)
            {
                timeSpan = ReturnCalcTimeSpan(length, fixedTime);

                if (timeSpan < 0)
                    timeSpan = ReturnCalcTimeSpan(7, fixedTime);
            }
            else
                timeSpan = ReturnCalcTimeSpan(7, fixedTime);

            return Convert.ToInt32(timeSpan);
        }

        private double ReturnCalcTimeSpan(int length, string fixedTime)
        {
            DateTime tarketDay = System.DateTime.Now.AddDays(length);

            string concatTime = string.Format("{0}-{1}-{2} {3}", tarketDay.Year
                                                               , tarketDay.Month.ToString().PadLeft(2, '0')
                                                               , tarketDay.Day.ToString().PadLeft(2, '0')
                                                               , fixedTime);
            DateTime runTime = new DateTime();
            runTime = DateTime.ParseExact(concatTime, "yyyy-MM-dd HH:mm:ss", null);

            double timeSpan = ((TimeSpan)runTime.Subtract(System.DateTime.Now)).TotalSeconds;

            return timeSpan;
        }
}