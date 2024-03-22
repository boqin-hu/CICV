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
}
}