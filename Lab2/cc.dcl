cc: dialog {
  label = "Проверка персечения объектов";
   :boxed_column{label="Выберите примитивы";
		: spacer {width =0.1;}
		:column{
		    alignment = centered;
			:retirement_button{
				label="Указать первый примитив";
				fixed_width = true;
				key="r1";
				mnemonic="H";}
			:edit_box{
				label="Имя первого примитива:";
				fixed_width = true;
				edit_width=24;
				edit_limit=24;
				alignment=left;
				key="e1";}
			:retirement_button{
				label="Указать второй примитив";
				fixed_width = true;
				key="r2";
				mnemonic="H";}
			:edit_box{
				label="Имя второго примитива:";
				fixed_width = true;
				edit_width=24;
				edit_limit=24;
				alignment=left;
				key="e2";}
		}
		}
		: spacer {width =0.1;}
		:boxed_column{label="Проверка пересечения";
			:row{ 
			        fixed_width = true;
			        fixed_height = true;
			        alignment = centered;
				:button{
		                      label="Проверить";
	  	                      width=10;
		                      key="b1";}
				:edit_box{
				label="Вывод:";
				fixed_width = true;
				edit_width=15;
				edit_limit=15;
				alignment=left;
				key="e3";}
			}					
		}

    
    :row{
    	fixed_width=true;
    	alignment = centered;
    		:button{		        
     		key="button_Cancel";
     		label="Выйти";
     		is_default=false;  //Не срабатывает, если нажат Enter
     		is_cancel=true;	   //Срабатывает, если нажат Р или Esc
     		is_tab_stop = true;//Фокус переключается между кнопками
     		fixed_width = true;//Ширина кнопки - по ширине надписи 
    		}	
	}
}
