cc: dialog {
  label = "�������� ���������� ��������";
   :boxed_column{label="�������� ���������";
		: spacer {width =0.1;}
		:column{
		    alignment = centered;
			:retirement_button{
				label="������� ������ ��������";
				fixed_width = true;
				key="r1";
				mnemonic="H";}
			:edit_box{
				label="��� ������� ���������:";
				fixed_width = true;
				edit_width=24;
				edit_limit=24;
				alignment=left;
				key="e1";}
			:retirement_button{
				label="������� ������ ��������";
				fixed_width = true;
				key="r2";
				mnemonic="H";}
			:edit_box{
				label="��� ������� ���������:";
				fixed_width = true;
				edit_width=24;
				edit_limit=24;
				alignment=left;
				key="e2";}
		}
		}
		: spacer {width =0.1;}
		:boxed_column{label="�������� �����������";
			:row{ 
			        fixed_width = true;
			        fixed_height = true;
			        alignment = centered;
				:button{
		                      label="���������";
	  	                      width=10;
		                      key="b1";}
				:edit_box{
				label="�����:";
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
     		label="�����";
     		is_default=false;  //�� �����������, ���� ����� Enter
     		is_cancel=true;	   //�����������, ���� ����� � ��� Esc
     		is_tab_stop = true;//����� ������������� ����� ��������
     		fixed_width = true;//������ ������ - �� ������ ������� 
    		}	
	}
}
