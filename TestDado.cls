@IsTest
public class TestDado {
    @IsTest public static void Dado(){
        Integer min=1;
        Integer max=6;
        Integer result= Math.round(Math.random() * (6 - 1) + 1);
        System.assertEquals(true, result>=min && result<= max);      
    }
}