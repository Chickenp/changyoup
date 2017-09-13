package dao;

import java.util.List;

import model.Planlike;
import model.Planlike;
import model.PlanlikeId;

public interface PlanLikeDao {
    public Integer save(Planlike planlike);
    public Planlike getLikeByUser(PlanlikeId planlikeid);
    public double getAvg(int planid);
}
