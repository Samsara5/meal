package com.wjw.meal.Pojo;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class StoreExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public StoreExample() {
        oredCriteria = new ArrayList<Criteria>();
    }

    public void setOrderByClause(String orderByClause) {
        this.orderByClause = orderByClause;
    }

    public String getOrderByClause() {
        return orderByClause;
    }

    public void setDistinct(boolean distinct) {
        this.distinct = distinct;
    }

    public boolean isDistinct() {
        return distinct;
    }

    public List<Criteria> getOredCriteria() {
        return oredCriteria;
    }

    public void or(Criteria criteria) {
        oredCriteria.add(criteria);
    }

    public Criteria or() {
        Criteria criteria = createCriteriaInternal();
        oredCriteria.add(criteria);
        return criteria;
    }

    public Criteria createCriteria() {
        Criteria criteria = createCriteriaInternal();
        if (oredCriteria.size() == 0) {
            oredCriteria.add(criteria);
        }
        return criteria;
    }

    protected Criteria createCriteriaInternal() {
        Criteria criteria = new Criteria();
        return criteria;
    }

    public void clear() {
        oredCriteria.clear();
        orderByClause = null;
        distinct = false;
    }

    protected abstract static class GeneratedCriteria {
        protected List<Criterion> criteria;

        protected GeneratedCriteria() {
            super();
            criteria = new ArrayList<Criterion>();
        }

        public boolean isValid() {
            return criteria.size() > 0;
        }

        public List<Criterion> getAllCriteria() {
            return criteria;
        }

        public List<Criterion> getCriteria() {
            return criteria;
        }

        protected void addCriterion(String condition) {
            if (condition == null) {
                throw new RuntimeException("Value for condition cannot be null");
            }
            criteria.add(new Criterion(condition));
        }

        protected void addCriterion(String condition, Object value, String property) {
            if (value == null) {
                throw new RuntimeException("Value for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value));
        }

        protected void addCriterion(String condition, Object value1, Object value2, String property) {
            if (value1 == null || value2 == null) {
                throw new RuntimeException("Between values for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value1, value2));
        }

        public Criteria andStroeidIsNull() {
            addCriterion("stroeid is null");
            return (Criteria) this;
        }

        public Criteria andStroeidIsNotNull() {
            addCriterion("stroeid is not null");
            return (Criteria) this;
        }

        public Criteria andStroeidEqualTo(String value) {
            addCriterion("stroeid =", value, "stroeid");
            return (Criteria) this;
        }

        public Criteria andStroeidNotEqualTo(String value) {
            addCriterion("stroeid <>", value, "stroeid");
            return (Criteria) this;
        }

        public Criteria andStroeidGreaterThan(String value) {
            addCriterion("stroeid >", value, "stroeid");
            return (Criteria) this;
        }

        public Criteria andStroeidGreaterThanOrEqualTo(String value) {
            addCriterion("stroeid >=", value, "stroeid");
            return (Criteria) this;
        }

        public Criteria andStroeidLessThan(String value) {
            addCriterion("stroeid <", value, "stroeid");
            return (Criteria) this;
        }

        public Criteria andStroeidLessThanOrEqualTo(String value) {
            addCriterion("stroeid <=", value, "stroeid");
            return (Criteria) this;
        }

        public Criteria andStroeidLike(String value) {
            addCriterion("stroeid like", value, "stroeid");
            return (Criteria) this;
        }

        public Criteria andStroeidNotLike(String value) {
            addCriterion("stroeid not like", value, "stroeid");
            return (Criteria) this;
        }

        public Criteria andStroeidIn(List<String> values) {
            addCriterion("stroeid in", values, "stroeid");
            return (Criteria) this;
        }

        public Criteria andStroeidNotIn(List<String> values) {
            addCriterion("stroeid not in", values, "stroeid");
            return (Criteria) this;
        }

        public Criteria andStroeidBetween(String value1, String value2) {
            addCriterion("stroeid between", value1, value2, "stroeid");
            return (Criteria) this;
        }

        public Criteria andStroeidNotBetween(String value1, String value2) {
            addCriterion("stroeid not between", value1, value2, "stroeid");
            return (Criteria) this;
        }

        public Criteria andStroenameIsNull() {
            addCriterion("stroename is null");
            return (Criteria) this;
        }

        public Criteria andStroenameIsNotNull() {
            addCriterion("stroename is not null");
            return (Criteria) this;
        }

        public Criteria andStroenameEqualTo(String value) {
            addCriterion("stroename =", value, "stroename");
            return (Criteria) this;
        }

        public Criteria andStroenameNotEqualTo(String value) {
            addCriterion("stroename <>", value, "stroename");
            return (Criteria) this;
        }

        public Criteria andStroenameGreaterThan(String value) {
            addCriterion("stroename >", value, "stroename");
            return (Criteria) this;
        }

        public Criteria andStroenameGreaterThanOrEqualTo(String value) {
            addCriterion("stroename >=", value, "stroename");
            return (Criteria) this;
        }

        public Criteria andStroenameLessThan(String value) {
            addCriterion("stroename <", value, "stroename");
            return (Criteria) this;
        }

        public Criteria andStroenameLessThanOrEqualTo(String value) {
            addCriterion("stroename <=", value, "stroename");
            return (Criteria) this;
        }

        public Criteria andStroenameLike(String value) {
            addCriterion("stroename like", value, "stroename");
            return (Criteria) this;
        }

        public Criteria andStroenameNotLike(String value) {
            addCriterion("stroename not like", value, "stroename");
            return (Criteria) this;
        }

        public Criteria andStroenameIn(List<String> values) {
            addCriterion("stroename in", values, "stroename");
            return (Criteria) this;
        }

        public Criteria andStroenameNotIn(List<String> values) {
            addCriterion("stroename not in", values, "stroename");
            return (Criteria) this;
        }

        public Criteria andStroenameBetween(String value1, String value2) {
            addCriterion("stroename between", value1, value2, "stroename");
            return (Criteria) this;
        }

        public Criteria andStroenameNotBetween(String value1, String value2) {
            addCriterion("stroename not between", value1, value2, "stroename");
            return (Criteria) this;
        }

        public Criteria andStroenumberIsNull() {
            addCriterion("stroenumber is null");
            return (Criteria) this;
        }

        public Criteria andStroenumberIsNotNull() {
            addCriterion("stroenumber is not null");
            return (Criteria) this;
        }

        public Criteria andStroenumberEqualTo(Integer value) {
            addCriterion("stroenumber =", value, "stroenumber");
            return (Criteria) this;
        }

        public Criteria andStroenumberNotEqualTo(Integer value) {
            addCriterion("stroenumber <>", value, "stroenumber");
            return (Criteria) this;
        }

        public Criteria andStroenumberGreaterThan(Integer value) {
            addCriterion("stroenumber >", value, "stroenumber");
            return (Criteria) this;
        }

        public Criteria andStroenumberGreaterThanOrEqualTo(Integer value) {
            addCriterion("stroenumber >=", value, "stroenumber");
            return (Criteria) this;
        }

        public Criteria andStroenumberLessThan(Integer value) {
            addCriterion("stroenumber <", value, "stroenumber");
            return (Criteria) this;
        }

        public Criteria andStroenumberLessThanOrEqualTo(Integer value) {
            addCriterion("stroenumber <=", value, "stroenumber");
            return (Criteria) this;
        }

        public Criteria andStroenumberIn(List<Integer> values) {
            addCriterion("stroenumber in", values, "stroenumber");
            return (Criteria) this;
        }

        public Criteria andStroenumberNotIn(List<Integer> values) {
            addCriterion("stroenumber not in", values, "stroenumber");
            return (Criteria) this;
        }

        public Criteria andStroenumberBetween(Integer value1, Integer value2) {
            addCriterion("stroenumber between", value1, value2, "stroenumber");
            return (Criteria) this;
        }

        public Criteria andStroenumberNotBetween(Integer value1, Integer value2) {
            addCriterion("stroenumber not between", value1, value2, "stroenumber");
            return (Criteria) this;
        }

        public Criteria andStroetimeIsNull() {
            addCriterion("stroetime is null");
            return (Criteria) this;
        }

        public Criteria andStroetimeIsNotNull() {
            addCriterion("stroetime is not null");
            return (Criteria) this;
        }

        public Criteria andStroetimeEqualTo(Date value) {
            addCriterion("stroetime =", value, "stroetime");
            return (Criteria) this;
        }

        public Criteria andStroetimeNotEqualTo(Date value) {
            addCriterion("stroetime <>", value, "stroetime");
            return (Criteria) this;
        }

        public Criteria andStroetimeGreaterThan(Date value) {
            addCriterion("stroetime >", value, "stroetime");
            return (Criteria) this;
        }

        public Criteria andStroetimeGreaterThanOrEqualTo(Date value) {
            addCriterion("stroetime >=", value, "stroetime");
            return (Criteria) this;
        }

        public Criteria andStroetimeLessThan(Date value) {
            addCriterion("stroetime <", value, "stroetime");
            return (Criteria) this;
        }

        public Criteria andStroetimeLessThanOrEqualTo(Date value) {
            addCriterion("stroetime <=", value, "stroetime");
            return (Criteria) this;
        }

        public Criteria andStroetimeIn(List<Date> values) {
            addCriterion("stroetime in", values, "stroetime");
            return (Criteria) this;
        }

        public Criteria andStroetimeNotIn(List<Date> values) {
            addCriterion("stroetime not in", values, "stroetime");
            return (Criteria) this;
        }

        public Criteria andStroetimeBetween(Date value1, Date value2) {
            addCriterion("stroetime between", value1, value2, "stroetime");
            return (Criteria) this;
        }

        public Criteria andStroetimeNotBetween(Date value1, Date value2) {
            addCriterion("stroetime not between", value1, value2, "stroetime");
            return (Criteria) this;
        }

        public Criteria andStroestateIsNull() {
            addCriterion("stroestate is null");
            return (Criteria) this;
        }

        public Criteria andStroestateIsNotNull() {
            addCriterion("stroestate is not null");
            return (Criteria) this;
        }

        public Criteria andStroestateEqualTo(Integer value) {
            addCriterion("stroestate =", value, "stroestate");
            return (Criteria) this;
        }

        public Criteria andStroestateNotEqualTo(Integer value) {
            addCriterion("stroestate <>", value, "stroestate");
            return (Criteria) this;
        }

        public Criteria andStroestateGreaterThan(Integer value) {
            addCriterion("stroestate >", value, "stroestate");
            return (Criteria) this;
        }

        public Criteria andStroestateGreaterThanOrEqualTo(Integer value) {
            addCriterion("stroestate >=", value, "stroestate");
            return (Criteria) this;
        }

        public Criteria andStroestateLessThan(Integer value) {
            addCriterion("stroestate <", value, "stroestate");
            return (Criteria) this;
        }

        public Criteria andStroestateLessThanOrEqualTo(Integer value) {
            addCriterion("stroestate <=", value, "stroestate");
            return (Criteria) this;
        }

        public Criteria andStroestateIn(List<Integer> values) {
            addCriterion("stroestate in", values, "stroestate");
            return (Criteria) this;
        }

        public Criteria andStroestateNotIn(List<Integer> values) {
            addCriterion("stroestate not in", values, "stroestate");
            return (Criteria) this;
        }

        public Criteria andStroestateBetween(Integer value1, Integer value2) {
            addCriterion("stroestate between", value1, value2, "stroestate");
            return (Criteria) this;
        }

        public Criteria andStroestateNotBetween(Integer value1, Integer value2) {
            addCriterion("stroestate not between", value1, value2, "stroestate");
            return (Criteria) this;
        }

        public Criteria andStoremanIsNull() {
            addCriterion("storeman is null");
            return (Criteria) this;
        }

        public Criteria andStoremanIsNotNull() {
            addCriterion("storeman is not null");
            return (Criteria) this;
        }

        public Criteria andStoremanEqualTo(Integer value) {
            addCriterion("storeman =", value, "storeman");
            return (Criteria) this;
        }

        public Criteria andStoremanNotEqualTo(Integer value) {
            addCriterion("storeman <>", value, "storeman");
            return (Criteria) this;
        }

        public Criteria andStoremanGreaterThan(Integer value) {
            addCriterion("storeman >", value, "storeman");
            return (Criteria) this;
        }

        public Criteria andStoremanGreaterThanOrEqualTo(Integer value) {
            addCriterion("storeman >=", value, "storeman");
            return (Criteria) this;
        }

        public Criteria andStoremanLessThan(Integer value) {
            addCriterion("storeman <", value, "storeman");
            return (Criteria) this;
        }

        public Criteria andStoremanLessThanOrEqualTo(Integer value) {
            addCriterion("storeman <=", value, "storeman");
            return (Criteria) this;
        }

        public Criteria andStoremanIn(List<Integer> values) {
            addCriterion("storeman in", values, "storeman");
            return (Criteria) this;
        }

        public Criteria andStoremanNotIn(List<Integer> values) {
            addCriterion("storeman not in", values, "storeman");
            return (Criteria) this;
        }

        public Criteria andStoremanBetween(Integer value1, Integer value2) {
            addCriterion("storeman between", value1, value2, "storeman");
            return (Criteria) this;
        }

        public Criteria andStoremanNotBetween(Integer value1, Integer value2) {
            addCriterion("storeman not between", value1, value2, "storeman");
            return (Criteria) this;
        }
    }

    public static class Criteria extends GeneratedCriteria {

        protected Criteria() {
            super();
        }
    }

    public static class Criterion {
        private String condition;

        private Object value;

        private Object secondValue;

        private boolean noValue;

        private boolean singleValue;

        private boolean betweenValue;

        private boolean listValue;

        private String typeHandler;

        public String getCondition() {
            return condition;
        }

        public Object getValue() {
            return value;
        }

        public Object getSecondValue() {
            return secondValue;
        }

        public boolean isNoValue() {
            return noValue;
        }

        public boolean isSingleValue() {
            return singleValue;
        }

        public boolean isBetweenValue() {
            return betweenValue;
        }

        public boolean isListValue() {
            return listValue;
        }

        public String getTypeHandler() {
            return typeHandler;
        }

        protected Criterion(String condition) {
            super();
            this.condition = condition;
            this.typeHandler = null;
            this.noValue = true;
        }

        protected Criterion(String condition, Object value, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.typeHandler = typeHandler;
            if (value instanceof List<?>) {
                this.listValue = true;
            } else {
                this.singleValue = true;
            }
        }

        protected Criterion(String condition, Object value) {
            this(condition, value, null);
        }

        protected Criterion(String condition, Object value, Object secondValue, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.secondValue = secondValue;
            this.typeHandler = typeHandler;
            this.betweenValue = true;
        }

        protected Criterion(String condition, Object value, Object secondValue) {
            this(condition, value, secondValue, null);
        }
    }
}