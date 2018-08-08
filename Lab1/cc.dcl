cc: dialog {
  label = "������� ��������������";
   :boxed_column{label="1-�� ���. ������� ���������� ��������.";
		: spacer {width =0.1;}
		:column{
		    alignment = centered;
			:edit_box{
				label="���������� X:";
				fixed_width = true;
				edit_width=4;
				edit_limit=4;
				alignment=left;
				key="specify_x";}
			:edit_box{
				label="���������� Y:";
				fixed_width = true;
				edit_width=4;
				edit_limit=4;
				alignment=left;
				key="specify_y";}
			:retirement_button{
				label="������� �����";
				fixed_width = true;
				key="specify_the_mouse";
				mnemonic="H";}
		}
		}
		: spacer {width =0.1;}
		:boxed_column{label="2-�� ���. ������� ���� ��������.";
			:row{ 
			        fixed_width = true;
			        fixed_height = true;
			        alignment = centered;
				:button{
		                      label="����";
	  	                      width=10;
		                      key="button_color";}
		                 :image_button{width=5;height=2;key="specify_color";}					
			}					
		}

        :boxed_column{label="3-�� ���. ������� �������.";
			:row{ 
			        fixed_width = true;
			        fixed_height = true;
			        alignment = centered;
				:retirement_button{
		                      label="�������";
	  	                      width=15;
		                      key="dimensions";
		                      mnemonic = "H";}	
            }
        }		
    :boxed_row{label = "4-�� ���. �������� �������.";
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
     		label="�����";
     		is_default=false;  //�� �����������, ���� ����� Enter
     		is_cancel=true;	   //�����������, ���� ����� � ��� Esc
     		is_tab_stop = true;//����� ������������� ����� ��������
     		fixed_width = true;//������ ������ - �� ������ ������� 
    		}	
	}
}

Dimensions: dialog{label = "�������";
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
