function floatValid(){
	var i_lat = document.input_form.lat;
	var i_long = document.input_form.long;
	if(LatValidation(i_lat) && LongValidation(i_long))
		return true;
	else
		return false;
		
}

function LatValidation(num){
	var reg= /^[0-9]*[.][0-9]+$/;
	if(num.value.match(reg)){
		return true;
	}
		
	else
	{
		alert("Enter Latitude float value");
		i_lat.value='';
		i_lat.focus();
		return false;
	}
	
}

function LongValidation(num){
	var reg= /^[0-9]*[.][0-9]+$/;
	if(num.value.match(reg)){
		return true;
	}
		
	else
	{
		alert("Enter Longitude float value");
		i_long.value='';
		i_long.focus();
		return false;
	}
	
}
