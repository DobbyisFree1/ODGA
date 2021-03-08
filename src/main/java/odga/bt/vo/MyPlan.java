package odga.bt.vo;

import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import odga.bt.domain.Planner;

@NoArgsConstructor
@AllArgsConstructor
@Data
public class MyPlan {
	private List<Planner> myPlans;
	private List<String> randomImg;
}
