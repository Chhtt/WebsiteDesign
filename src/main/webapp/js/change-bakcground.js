var x=2;

function change(){
	switch(x){
		case 1:
		document.body.style.backgroundImage="url('./picture/1.png')";
		break;
		case 2:
		document.body.style.backgroundImage="url('./picture/2.png')";
		break;
		case 3:
		document.body.style.backgroundImage="url('./picture/3.png')";
		break;
	}
	++x;
	if (x==4)  x=1;
}
