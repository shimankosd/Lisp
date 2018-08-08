cc: dialog {
  label = "Каталог радиоэлементов";
   :boxed_column{label="1-ый шаг. Указать координаты элемента.";
		: spacer {width =0.1;}
		:column{
		    alignment = centered;
			:edit_box{
				label="Координата X:";
				fixed_width = true;
				edit_width=4;
				edit_limit=4;
				alignment=left;
				key="specify_x";}
			:edit_box{
				label="Координата Y:";
				fixed_width = true;
				edit_width=4;
				edit_limit=4;
				alignment=left;
				key="specify_y";}
			:retirement_button{
				label="Указать мышью";
				fixed_width = true;
				key="specify_the_mouse";
				mnemonic="H";}
		}
		}
		: spacer {width =0.1;}
		:boxed_column{label="2-ой шаг. Выбрать цвет элемента.";
			:row{ 
			        fixed_width = true;
			        fixed_height = true;
			        alignment = centered;
				:button{
		                      label="Цвет";
	  	                      width=10;
		                      key="button_color";}
		                 :image_button{width=5;height=2;key="specify_color";}					
			}					
		}

        :boxed_column{label="3-ый шаг. Указать масштаб.";
			:row{ 
			        fixed_width = true;
			        fixed_height = true;
			        alignment = centered;
				:retirement_button{
		                      label="Масштаб";
	  	                      width=15;
		                      key="dimensions";
		                      mnemonic = "H";}	
            }
        }		
    :boxed_row{label = "4-ый шаг. Выберите элемент.";
    	:image_button{color=0;width=4;height=4;key="res";}
    	:image_button{color=0;width=4;height=4;key="diod";}
    	:image_button{color=0;width=4;height=4;key="con";}
    	:image_button{color=0;width=4;height=4;key="ist";}
    	:image_button{color=0;width=4;height=4;key="tran";}
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

Dimensions: dialog{label = "Масштаб";
            :button{
		                      label="1.0";
	  	                      width=10;
		                      key="m1";}
			:button{
		                      label="1.5";
	  	                      width=10;
		                      key="m2";}
			:button{
		                      label="2.0";
	  	                      width=10;
		                      key="m3";}				  
        ok_only;
}
