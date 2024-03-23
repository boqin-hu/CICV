#pragma once

#include <vector>
#include <cassert>

namespace dust{
namespace control{

class NumericMeanFilter {
 public:
  NumericMeanFilter(const unsigned int& max_array_size) : max_array_size_(max_array_size) {
    assert(max_array_size_ > 0);
  }
  NumericMeanFilter() {}

 public:
  double filt(const double& new_value) {
    history_array_.emplace_back(new_value);
    while (history_array_.size() > max_array_size_) {
      history_array_.erase(history_array_.begin());
    }
    double history_value_sum = 0.0;
    for (const auto& value : history_array_) {
      history_value_sum += value;
    }
    assert(history_array_.size() > 0);
    filt_result_ = history_value_sum / history_array_.size();
    return filt_result_;
  }
  inline void setNumberSize(const unsigned int& size) {
    max_array_size_ = size;
    assert(max_array_size_ > 0);
  }
  void reset() { history_array_.clear(); }

 private:
  std::vector<double> history_array_;
  unsigned int max_array_size_;
  double filt_result_;
  
};
class LowPassFilter {
 public:
  LowPassFilter() : a_(1.0), b_(0.0), pre_value_(0.0), is_ready_(false) {}
  LowPassFilter(const double& tau, const double& ts) : pre_value_(0), is_ready_(false) {
    a_ = 1 / (tau / ts + 1);
    b_ = tau / ts / (tau / ts + 1);
  }

  void reset() { is_ready_ = false; }

  void setParam(const double& a, const double& b) {
    a_ = a;
    b_ = b;
    is_ready_ = false;
  }

  double filt(const double& cur_value) {
    if (!is_ready_) {
      is_ready_ = true;
      pre_value_ = cur_value;
      return pre_value_;
    } else {
      pre_value_ = a_ * cur_value + b_ * pre_value_;
      return pre_value_;
    }
  }

  double getPreviousValue() { return pre_value_; }

 private:
  double a_;
  double b_;
  double pre_value_;
  bool is_ready_;
};
}
}