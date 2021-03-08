package odga.bt.vo;

import java.util.ArrayList;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import odga.bt.domain.Area_T;
import odga.bt.domain.Planner;
import odga.bt.domain.Sigungu_T;

@NoArgsConstructor
@AllArgsConstructor
@Data
public class TotalList {
	private ArrayList<Area_T> list;
	private ArrayList<Sigungu_T> list_s;
	private long thisP_id;
}
