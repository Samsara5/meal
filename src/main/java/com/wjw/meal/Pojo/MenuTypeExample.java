package com.wjw.meal.Pojo;

import java.util.ArrayList;
import java.util.List;

public class MenuTypeExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public MenuTypeExample() {
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

        public Criteria andMtidIsNull() {
            addCriterion("mtid is null");
            return (Criteria) this;
        }

        public Criteria andMtidIsNotNull() {
            addCriterion("mtid is not null");
            return (Criteria) this;
        }

        public Criteria andMtidEqualTo(Integer value) {
            addCriterion("mtid =", value, "mtid");
            return (Criteria) this;
        }

        public Criteria andMtidNotEqualTo(Integer value) {
            addCriterion("mtid <>", value, "mtid");
            return (Criteria) this;
        }

        public Criteria andMtidGreaterThan(Integer value) {
            addCriterion("mtid >", value, "mtid");
            return (Criteria) this;
        }

        public Criteria andMtidGreaterThanOrEqualTo(Integer value) {
            addCriterion("mtid >=", value, "mtid");
            return (Criteria) this;
        }

        public Criteria andMtidLessThan(Integer value) {
            addCriterion("mtid <", value, "mtid");
            return (Criteria) this;
        }

        public Criteria andMtidLessThanOrEqualTo(Integer value) {
            addCriterion("mtid <=", value, "mtid");
            return (Criteria) this;
        }

        public Criteria andMtidIn(List<Integer> values) {
            addCriterion("mtid in", values, "mtid");
            return (Criteria) this;
        }

        public Criteria andMtidNotIn(List<Integer> values) {
            addCriterion("mtid not in", values, "mtid");
            return (Criteria) this;
        }

        public Criteria andMtidBetween(Integer value1, Integer value2) {
            addCriterion("mtid between", value1, value2, "mtid");
            return (Criteria) this;
        }

        public Criteria andMtidNotBetween(Integer value1, Integer value2) {
            addCriterion("mtid not between", value1, value2, "mtid");
            return (Criteria) this;
        }

        public Criteria andMtnameIsNull() {
            addCriterion("mtname is null");
            return (Criteria) this;
        }

        public Criteria andMtnameIsNotNull() {
            addCriterion("mtname is not null");
            return (Criteria) this;
        }

        public Criteria andMtnameEqualTo(String value) {
            addCriterion("mtname =", value, "mtname");
            return (Criteria) this;
        }

        public Criteria andMtnameNotEqualTo(String value) {
            addCriterion("mtname <>", value, "mtname");
            return (Criteria) this;
        }

        public Criteria andMtnameGreaterThan(String value) {
            addCriterion("mtname >", value, "mtname");
            return (Criteria) this;
        }

        public Criteria andMtnameGreaterThanOrEqualTo(String value) {
            addCriterion("mtname >=", value, "mtname");
            return (Criteria) this;
        }

        public Criteria andMtnameLessThan(String value) {
            addCriterion("mtname <", value, "mtname");
            return (Criteria) this;
        }

        public Criteria andMtnameLessThanOrEqualTo(String value) {
            addCriterion("mtname <=", value, "mtname");
            return (Criteria) this;
        }

        public Criteria andMtnameLike(String value) {
            addCriterion("mtname like", value, "mtname");
            return (Criteria) this;
        }

        public Criteria andMtnameNotLike(String value) {
            addCriterion("mtname not like", value, "mtname");
            return (Criteria) this;
        }

        public Criteria andMtnameIn(List<String> values) {
            addCriterion("mtname in", values, "mtname");
            return (Criteria) this;
        }

        public Criteria andMtnameNotIn(List<String> values) {
            addCriterion("mtname not in", values, "mtname");
            return (Criteria) this;
        }

        public Criteria andMtnameBetween(String value1, String value2) {
            addCriterion("mtname between", value1, value2, "mtname");
            return (Criteria) this;
        }

        public Criteria andMtnameNotBetween(String value1, String value2) {
            addCriterion("mtname not between", value1, value2, "mtname");
            return (Criteria) this;
        }

        public Criteria andMpidIsNull() {
            addCriterion("mpid is null");
            return (Criteria) this;
        }

        public Criteria andMpidIsNotNull() {
            addCriterion("mpid is not null");
            return (Criteria) this;
        }

        public Criteria andMpidEqualTo(Integer value) {
            addCriterion("mpid =", value, "mpid");
            return (Criteria) this;
        }

        public Criteria andMpidNotEqualTo(Integer value) {
            addCriterion("mpid <>", value, "mpid");
            return (Criteria) this;
        }

        public Criteria andMpidGreaterThan(Integer value) {
            addCriterion("mpid >", value, "mpid");
            return (Criteria) this;
        }

        public Criteria andMpidGreaterThanOrEqualTo(Integer value) {
            addCriterion("mpid >=", value, "mpid");
            return (Criteria) this;
        }

        public Criteria andMpidLessThan(Integer value) {
            addCriterion("mpid <", value, "mpid");
            return (Criteria) this;
        }

        public Criteria andMpidLessThanOrEqualTo(Integer value) {
            addCriterion("mpid <=", value, "mpid");
            return (Criteria) this;
        }

        public Criteria andMpidIn(List<Integer> values) {
            addCriterion("mpid in", values, "mpid");
            return (Criteria) this;
        }

        public Criteria andMpidNotIn(List<Integer> values) {
            addCriterion("mpid not in", values, "mpid");
            return (Criteria) this;
        }

        public Criteria andMpidBetween(Integer value1, Integer value2) {
            addCriterion("mpid between", value1, value2, "mpid");
            return (Criteria) this;
        }

        public Criteria andMpidNotBetween(Integer value1, Integer value2) {
            addCriterion("mpid not between", value1, value2, "mpid");
            return (Criteria) this;
        }

        public Criteria andMlevelIsNull() {
            addCriterion("mlevel is null");
            return (Criteria) this;
        }

        public Criteria andMlevelIsNotNull() {
            addCriterion("mlevel is not null");
            return (Criteria) this;
        }

        public Criteria andMlevelEqualTo(Integer value) {
            addCriterion("mlevel =", value, "mlevel");
            return (Criteria) this;
        }

        public Criteria andMlevelNotEqualTo(Integer value) {
            addCriterion("mlevel <>", value, "mlevel");
            return (Criteria) this;
        }

        public Criteria andMlevelGreaterThan(Integer value) {
            addCriterion("mlevel >", value, "mlevel");
            return (Criteria) this;
        }

        public Criteria andMlevelGreaterThanOrEqualTo(Integer value) {
            addCriterion("mlevel >=", value, "mlevel");
            return (Criteria) this;
        }

        public Criteria andMlevelLessThan(Integer value) {
            addCriterion("mlevel <", value, "mlevel");
            return (Criteria) this;
        }

        public Criteria andMlevelLessThanOrEqualTo(Integer value) {
            addCriterion("mlevel <=", value, "mlevel");
            return (Criteria) this;
        }

        public Criteria andMlevelIn(List<Integer> values) {
            addCriterion("mlevel in", values, "mlevel");
            return (Criteria) this;
        }

        public Criteria andMlevelNotIn(List<Integer> values) {
            addCriterion("mlevel not in", values, "mlevel");
            return (Criteria) this;
        }

        public Criteria andMlevelBetween(Integer value1, Integer value2) {
            addCriterion("mlevel between", value1, value2, "mlevel");
            return (Criteria) this;
        }

        public Criteria andMlevelNotBetween(Integer value1, Integer value2) {
            addCriterion("mlevel not between", value1, value2, "mlevel");
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