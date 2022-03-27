  
    function validate() {  
        var fname = document.reg_form.first_name;  
        var lname = document.reg_form.last_name;  
        if (fname.value.length <= 0) {  
            alert("Name is required");  
            fname.focus();  
            return false;  
        }  
        if (lname.value.length <= 0) {  
            alert("Last Name is required");  
            lname.focus();  
            return false;  
        }  
    }