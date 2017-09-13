package service;

import java.util.List;

import model.Planlike;
import model.Planlike;
import model.PlanlikeId;

public interface PlanLikeService {
    public Integer save(Planlike planlike);
    public Planlike getLikeByUser(PlanlikeId planlikeid);
    public double getAvg(int planid);
}
