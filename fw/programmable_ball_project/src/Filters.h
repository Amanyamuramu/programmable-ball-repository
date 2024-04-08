#ifndef FILTERS_H
#define FILTERS_H

class Filters {
public:
    static float applyLowPassFilter(float rawValue, float &oldValue);
    static float applyHighPassFilter(float rawValue, float lowPassValue);
    static float applyBandPassFilter(float highPassInput, float &lastBandPassOutput);
    static float applyFilter(float rawValue, float &lastLPFValue, float &lastBPFValue);
};

#endif // FILTERS_H
