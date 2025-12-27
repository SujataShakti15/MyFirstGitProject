trigger AccountTrigger3 on Account (before insert,after update) {

Boolean f = false;

    if(Trigger.isBefore){
        if(Trigger.isUpdate){
         List<Account> aList = Trigger.new;
           aList[0].type = 'Customer - Direct';
           update aList;
           f=true;
    }


}

if(trigger.isAfter){

    if(trigger.isUpdate){

        Account a =[Select Id, name , Type From Account where Id =: Trigger.new[0].Id];
        a.type = 'Customer - Direct';
        if(f)
        update a;

    }  
}


}