#include "Filters.h"

float Filters::applyLowPassFilter(float rawValue, float &oldValue) {
    const float alpha = 0.2f;
    float result = alpha * rawValue + (1.0f - alpha) * oldValue;
    oldValue = result;
    return result;
}

float Filters::applyHighPassFilter(float rawValue, float lowPassValue) {
    return rawValue - lowPassValue;
}

float Filters::applyBandPassFilter(float highPassInput, float &lastBandPassOutput) {
    const float alpha = 0.2f;
    float result = alpha * highPassInput + (1.0f - alpha) * lastBandPassOutput;
    lastBandPassOutput = result;
    return result;
}

float Filters::applyFilter(float rawValue, float &lastLPFValue, float &lastBPFValue) {
    float lpfOutput = applyLowPassFilter(rawValue, lastLPFValue);
    float hpfOutput = applyHighPassFilter(rawValue, lpfOutput);
    float bpfOutput = applyBandPassFilter(hpfOutput, lastBPFValue);
    return bpfOutput;
}
