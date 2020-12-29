package com.wjw.meal.Pojo;

import java.util.ArrayList;
import java.util.List;

public class OrderContentExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public OrderContentExample() {
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

        public Criteria andContentidIsNull() {
            addCriterion("contentid is null");
            return (Criteria) this;
        }

        public Criteria andContentidIsNotNull() {
            addCriterion("contentid is not null");
            return (Criteria) this;
        }

        public Criteria andContentidEqualTo(String value) {
            addCriterion("contentid =", value, "contentid");
            return (Criteria) this;
        }

        public Criteria andContentidNotEqualTo(String value) {
            addCriterion("contentid <>", value, "contentid");
            return (Criteria) this;
        }

        public Criteria andContentidGreaterThan(String value) {
            addCriterion("contentid >", value, "contentid");
            return (Criteria) this;
        }

        public Criteria andContentidGreaterThanOrEqualTo(String value) {
            addCriterion("contentid >=", value, "contentid");
            return (Criteria) this;
        }

        public Criteria andContentidLessThan(String value) {
            addCriterion("contentid <", value, "contentid");
            return (Criteria) this;
        }

        public Criteria andContentidLessThanOrEqualTo(String value) {
            addCriterion("contentid <=", value, "contentid");
            return (Criteria) this;
        }

        public Criteria andContentidLike(String value) {
            addCriterion("contentid like", value, "contentid");
            return (Criteria) this;
        }

        public Criteria andContentidNotLike(String value) {
            addCriterion("contentid not like", value, "contentid");
            return (Criteria) this;
        }

        public Criteria andContentidIn(List<String> values) {
            addCriterion("contentid in", values, "contentid");
            return (Criteria) this;
        }

        public Criteria andContentidNotIn(List<String> values) {
            addCriterion("contentid not in", values, "contentid");
            return (Criteria) this;
        }

        public Criteria andContentidBetween(String value1, String value2) {
            addCriterion("contentid between", value1, value2, "contentid");
            return (Criteria) this;
        }

        public Criteria andContentidNotBetween(String value1, String value2) {
            addCriterion("contentid not between", value1, value2, "contentid");
            return (Criteria) this;
        }

        public Criteria andStorenameIsNull() {
            addCriterion("storename is null");
            return (Criteria) this;
        }

        public Criteria andStorenameIsNotNull() {
            addCriterion("storename is not null");
            return (Criteria) this;
        }

        public Criteria andStorenameEqualTo(String value) {
            addCriterion("storename =", value, "storename");
            return (Criteria) this;
        }

        public Criteria andStorenameNotEqualTo(String value) {
            addCriterion("storename <>", value, "storename");
            return (Criteria) this;
        }

        public Criteria andStorenameGreaterThan(String value) {
            addCriterion("storename >", value, "storename");
            return (Criteria) this;
        }

        public Criteria andStorenameGreaterThanOrEqualTo(String value) {
            addCriterion("storename >=", value, "storename");
            return (Criteria) this;
        }

        public Criteria andStorenameLessThan(String value) {
            addCriterion("storename <", value, "storename");
            return (Criteria) this;
        }

        public Criteria andStorenameLessThanOrEqualTo(String value) {
            addCriterion("storename <=", value, "storename");
            return (Criteria) this;
        }

        public Criteria andStorenameLike(String value) {
            addCriterion("storename like", value, "storename");
            return (Criteria) this;
        }

        public Criteria andStorenameNotLike(String value) {
            addCriterion("storename not like", value, "storename");
            return (Criteria) this;
        }

        public Criteria andStorenameIn(List<String> values) {
            addCriterion("storename in", values, "storename");
            return (Criteria) this;
        }

        public Criteria andStorenameNotIn(List<String> values) {
            addCriterion("storename not in", values, "storename");
            return (Criteria) this;
        }

        public Criteria andStorenameBetween(String value1, String value2) {
            addCriterion("storename between", value1, value2, "storename");
            return (Criteria) this;
        }

        public Criteria andStorenameNotBetween(String value1, String value2) {
            addCriterion("storename not between", value1, value2, "storename");
            return (Criteria) this;
        }

        public Criteria andOrdernumIsNull() {
            addCriterion("ordernum is null");
            return (Criteria) this;
        }

        public Criteria andOrdernumIsNotNull() {
            addCriterion("ordernum is not null");
            return (Criteria) this;
        }

        public Criteria andOrdernumEqualTo(String value) {
            addCriterion("ordernum =", value, "ordernum");
            return (Criteria) this;
        }

        public Criteria andOrdernumNotEqualTo(String value) {
            addCriterion("ordernum <>", value, "ordernum");
            return (Criteria) this;
        }

        public Criteria andOrdernumGreaterThan(String value) {
            addCriterion("ordernum >", value, "ordernum");
            return (Criteria) this;
        }

        public Criteria andOrdernumGreaterThanOrEqualTo(String value) {
            addCriterion("ordernum >=", value, "ordernum");
            return (Criteria) this;
        }

        public Criteria andOrdernumLessThan(String value) {
            addCriterion("ordernum <", value, "ordernum");
            return (Criteria) this;
        }

        public Criteria andOrdernumLessThanOrEqualTo(String value) {
            addCriterion("ordernum <=", value, "ordernum");
            return (Criteria) this;
        }

        public Criteria andOrdernumLike(String value) {
            addCriterion("ordernum like", value, "ordernum");
            return (Criteria) this;
        }

        public Criteria andOrdernumNotLike(String value) {
            addCriterion("ordernum not like", value, "ordernum");
            return (Criteria) this;
        }

        public Criteria andOrdernumIn(List<String> values) {
            addCriterion("ordernum in", values, "ordernum");
            return (Criteria) this;
        }

        public Criteria andOrdernumNotIn(List<String> values) {
            addCriterion("ordernum not in", values, "ordernum");
            return (Criteria) this;
        }

        public Criteria andOrdernumBetween(String value1, String value2) {
            addCriterion("ordernum between", value1, value2, "ordernum");
            return (Criteria) this;
        }

        public Criteria andOrdernumNotBetween(String value1, String value2) {
            addCriterion("ordernum not between", value1, value2, "ordernum");
            return (Criteria) this;
        }

        public Criteria andTotalpriceIsNull() {
            addCriterion("totalprice is null");
            return (Criteria) this;
        }

        public Criteria andTotalpriceIsNotNull() {
            addCriterion("totalprice is not null");
            return (Criteria) this;
        }

        public Criteria andTotalpriceEqualTo(String value) {
            addCriterion("totalprice =", value, "totalprice");
            return (Criteria) this;
        }

        public Criteria andTotalpriceNotEqualTo(String value) {
            addCriterion("totalprice <>", value, "totalprice");
            return (Criteria) this;
        }

        public Criteria andTotalpriceGreaterThan(String value) {
            addCriterion("totalprice >", value, "totalprice");
            return (Criteria) this;
        }

        public Criteria andTotalpriceGreaterThanOrEqualTo(String value) {
            addCriterion("totalprice >=", value, "totalprice");
            return (Criteria) this;
        }

        public Criteria andTotalpriceLessThan(String value) {
            addCriterion("totalprice <", value, "totalprice");
            return (Criteria) this;
        }

        public Criteria andTotalpriceLessThanOrEqualTo(String value) {
            addCriterion("totalprice <=", value, "totalprice");
            return (Criteria) this;
        }

        public Criteria andTotalpriceLike(String value) {
            addCriterion("totalprice like", value, "totalprice");
            return (Criteria) this;
        }

        public Criteria andTotalpriceNotLike(String value) {
            addCriterion("totalprice not like", value, "totalprice");
            return (Criteria) this;
        }

        public Criteria andTotalpriceIn(List<String> values) {
            addCriterion("totalprice in", values, "totalprice");
            return (Criteria) this;
        }

        public Criteria andTotalpriceNotIn(List<String> values) {
            addCriterion("totalprice not in", values, "totalprice");
            return (Criteria) this;
        }

        public Criteria andTotalpriceBetween(String value1, String value2) {
            addCriterion("totalprice between", value1, value2, "totalprice");
            return (Criteria) this;
        }

        public Criteria andTotalpriceNotBetween(String value1, String value2) {
            addCriterion("totalprice not between", value1, value2, "totalprice");
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