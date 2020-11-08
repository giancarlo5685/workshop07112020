package resfulbooker.getbooking;

import com.intuit.karate.KarateOptions;
import com.intuit.karate.junit4.Karate;
import org.junit.runner.RunWith;

@RunWith(Karate.class)
@KarateOptions(features = "classpath:resfulbooker/getbooking/GetBooking.feature")
public class GetBookingRunner {
}