package com.wjw.meal.Pojo;

import java.util.ArrayList;
import java.util.List;

public class MenuExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public MenuExample() {
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

        public Criteria andMidIsNull() {
            addCriterion("mid is null");
            return (Criteria) this;
        }

        public Criteria andMidIsNotNull() {
            addCriterion("mid is not null");
            return (Criteria) this;
        }

        public Criteria andMidEqualTo(String value) {
            addCriterion("mid =", value, "mid");
            return (Criteria) this;
        }

        public Criteria andMidNotEqualTo(String value) {
            addCriterion("mid <>", value, "mid");
            return (Criteria) this;
        }

        public Criteria andMidGreaterThan(String value) {
            addCriterion("mid >", value, "mid");
            return (Criteria) this;
        }

        public Criteria andMidGreaterThanOrEqualTo(String value) {
            addCriterion("mid >=", value, "mid");
            return (Criteria) this;
        }

        public Criteria andMidLessThan(String value) {
            addCriterion("mid <", value, "mid");
            return (Criteria) this;
        }

        public Criteria andMidLessThanOrEqualTo(String value) {
            addCriterion("mid <=", value, "mid");
            return (Criteria) this;
        }

        public Criteria andMidLike(String value) {
            addCriterion("mid like", value, "mid");
            return (Criteria) this;
        }

        public Criteria andMidNotLike(String value) {
            addCriterion("mid not like", value, "mid");
            return (Criteria) this;
        }

        public Criteria andMidIn(List<String> values) {
            addCriterion("mid in", values, "mid");
            return (Criteria) this;
        }

        public Criteria andMidNotIn(List<String> values) {
            addCriterion("mid not in", values, "mid");
            return (Criteria) this;
        }

        public Criteria andMidBetween(String value1, String value2) {
            addCriterion("mid between", value1, value2, "mid");
            return (Criteria) this;
        }

        public Criteria andMidNotBetween(String value1, String value2) {
            addCriterion("mid not between", value1, value2, "mid");
            return (Criteria) this;
        }

        public Criteria andMnameIsNull() {
            addCriterion("mname is null");
            return (Criteria) this;
        }

        public Criteria andMnameIsNotNull() {
            addCriterion("mname is not null");
            return (Criteria) this;
        }

        public Criteria andMnameEqualTo(String value) {
            addCriterion("mname =", value, "mname");
            return (Criteria) this;
        }

        public Criteria andMnameNotEqualTo(String value) {
            addCriterion("mname <>", value, "mname");
            return (Criteria) this;
        }

        public Criteria andMnameGreaterThan(String value) {
            addCriterion("mname >", value, "mname");
            return (Criteria) this;
        }

        public Criteria andMnameGreaterThanOrEqualTo(String value) {
            addCriterion("mname >=", value, "mname");
            return (Criteria) this;
        }

        public Criteria andMnameLessThan(String value) {
            addCriterion("mname <", value, "mname");
            return (Criteria) this;
        }

        public Criteria andMnameLessThanOrEqualTo(String value) {
            addCriterion("mname <=", value, "mname");
            return (Criteria) this;
        }

        public Criteria andMnameLike(String value) {
            addCriterion("mname like", value, "mname");
            return (Criteria) this;
        }

        public Criteria andMnameNotLike(String value) {
            addCriterion("mname not like", value, "mname");
            return (Criteria) this;
        }

        public Criteria andMnameIn(List<String> values) {
            addCriterion("mname in", values, "mname");
            return (Criteria) this;
        }

        public Criteria andMnameNotIn(List<String> values) {
            addCriterion("mname not in", values, "mname");
            return (Criteria) this;
        }

        public Criteria andMnameBetween(String value1, String value2) {
            addCriterion("mname between", value1, value2, "mname");
            return (Criteria) this;
        }

        public Criteria andMnameNotBetween(String value1, String value2) {
            addCriterion("mname not between", value1, value2, "mname");
            return (Criteria) this;
        }

        public Criteria andMmateriaIsNull() {
            addCriterion("mmateria is null");
            return (Criteria) this;
        }

        public Criteria andMmateriaIsNotNull() {
            addCriterion("mmateria is not null");
            return (Criteria) this;
        }

        public Criteria andMmateriaEqualTo(String value) {
            addCriterion("mmateria =", value, "mmateria");
            return (Criteria) this;
        }

        public Criteria andMmateriaNotEqualTo(String value) {
            addCriterion("mmateria <>", value, "mmateria");
            return (Criteria) this;
        }

        public Criteria andMmateriaGreaterThan(String value) {
            addCriterion("mmateria >", value, "mmateria");
            return (Criteria) this;
        }

        public Criteria andMmateriaGreaterThanOrEqualTo(String value) {
            addCriterion("mmateria >=", value, "mmateria");
            return (Criteria) this;
        }

        public Criteria andMmateriaLessThan(String value) {
            addCriterion("mmateria <", value, "mmateria");
            return (Criteria) this;
        }

        public Criteria andMmateriaLessThanOrEqualTo(String value) {
            addCriterion("mmateria <=", value, "mmateria");
            return (Criteria) this;
        }

        public Criteria andMmateriaLike(String value) {
            addCriterion("mmateria like", value, "mmateria");
            return (Criteria) this;
        }

        public Criteria andMmateriaNotLike(String value) {
            addCriterion("mmateria not like", value, "mmateria");
            return (Criteria) this;
        }

        public Criteria andMmateriaIn(List<String> values) {
            addCriterion("mmateria in", values, "mmateria");
            return (Criteria) this;
        }

        public Criteria andMmateriaNotIn(List<String> values) {
            addCriterion("mmateria not in", values, "mmateria");
            return (Criteria) this;
        }

        public Criteria andMmateriaBetween(String value1, String value2) {
            addCriterion("mmateria between", value1, value2, "mmateria");
            return (Criteria) this;
        }

        public Criteria andMmateriaNotBetween(String value1, String value2) {
            addCriterion("mmateria not between", value1, value2, "mmateria");
            return (Criteria) this;
        }

        public Criteria andMpirceIsNull() {
            addCriterion("mpirce is null");
            return (Criteria) this;
        }

        public Criteria andMpirceIsNotNull() {
            addCriterion("mpirce is not null");
            return (Criteria) this;
        }

        public Criteria andMpirceEqualTo(String value) {
            addCriterion("mpirce =", value, "mpirce");
            return (Criteria) this;
        }

        public Criteria andMpirceNotEqualTo(String value) {
            addCriterion("mpirce <>", value, "mpirce");
            return (Criteria) this;
        }

        public Criteria andMpirceGreaterThan(String value) {
            addCriterion("mpirce >", value, "mpirce");
            return (Criteria) this;
        }

        public Criteria andMpirceGreaterThanOrEqualTo(String value) {
            addCriterion("mpirce >=", value, "mpirce");
            return (Criteria) this;
        }

        public Criteria andMpirceLessThan(String value) {
            addCriterion("mpirce <", value, "mpirce");
            return (Criteria) this;
        }

        public Criteria andMpirceLessThanOrEqualTo(String value) {
            addCriterion("mpirce <=", value, "mpirce");
            return (Criteria) this;
        }

        public Criteria andMpirceLike(String value) {
            addCriterion("mpirce like", value, "mpirce");
            return (Criteria) this;
        }

        public Criteria andMpirceNotLike(String value) {
            addCriterion("mpirce not like", value, "mpirce");
            return (Criteria) this;
        }

        public Criteria andMpirceIn(List<String> values) {
            addCriterion("mpirce in", values, "mpirce");
            return (Criteria) this;
        }

        public Criteria andMpirceNotIn(List<String> values) {
            addCriterion("mpirce not in", values, "mpirce");
            return (Criteria) this;
        }

        public Criteria andMpirceBetween(String value1, String value2) {
            addCriterion("mpirce between", value1, value2, "mpirce");
            return (Criteria) this;
        }

        public Criteria andMpirceNotBetween(String value1, String value2) {
            addCriterion("mpirce not between", value1, value2, "mpirce");
            return (Criteria) this;
        }

        public Criteria andMnumberIsNull() {
            addCriterion("mnumber is null");
            return (Criteria) this;
        }

        public Criteria andMnumberIsNotNull() {
            addCriterion("mnumber is not null");
            return (Criteria) this;
        }

        public Criteria andMnumberEqualTo(String value) {
            addCriterion("mnumber =", value, "mnumber");
            return (Criteria) this;
        }

        public Criteria andMnumberNotEqualTo(String value) {
            addCriterion("mnumber <>", value, "mnumber");
            return (Criteria) this;
        }

        public Criteria andMnumberGreaterThan(String value) {
            addCriterion("mnumber >", value, "mnumber");
            return (Criteria) this;
        }

        public Criteria andMnumberGreaterThanOrEqualTo(String value) {
            addCriterion("mnumber >=", value, "mnumber");
            return (Criteria) this;
        }

        public Criteria andMnumberLessThan(String value) {
            addCriterion("mnumber <", value, "mnumber");
            return (Criteria) this;
        }

        public Criteria andMnumberLessThanOrEqualTo(String value) {
            addCriterion("mnumber <=", value, "mnumber");
            return (Criteria) this;
        }

        public Criteria andMnumberLike(String value) {
            addCriterion("mnumber like", value, "mnumber");
            return (Criteria) this;
        }

        public Criteria andMnumberNotLike(String value) {
            addCriterion("mnumber not like", value, "mnumber");
            return (Criteria) this;
        }

        public Criteria andMnumberIn(List<String> values) {
            addCriterion("mnumber in", values, "mnumber");
            return (Criteria) this;
        }

        public Criteria andMnumberNotIn(List<String> values) {
            addCriterion("mnumber not in", values, "mnumber");
            return (Criteria) this;
        }

        public Criteria andMnumberBetween(String value1, String value2) {
            addCriterion("mnumber between", value1, value2, "mnumber");
            return (Criteria) this;
        }

        public Criteria andMnumberNotBetween(String value1, String value2) {
            addCriterion("mnumber not between", value1, value2, "mnumber");
            return (Criteria) this;
        }

        public Criteria andMischaraIsNull() {
            addCriterion("mischara is null");
            return (Criteria) this;
        }

        public Criteria andMischaraIsNotNull() {
            addCriterion("mischara is not null");
            return (Criteria) this;
        }

        public Criteria andMischaraEqualTo(Integer value) {
            addCriterion("mischara =", value, "mischara");
            return (Criteria) this;
        }

        public Criteria andMischaraNotEqualTo(Integer value) {
            addCriterion("mischara <>", value, "mischara");
            return (Criteria) this;
        }

        public Criteria andMischaraGreaterThan(Integer value) {
            addCriterion("mischara >", value, "mischara");
            return (Criteria) this;
        }

        public Criteria andMischaraGreaterThanOrEqualTo(Integer value) {
            addCriterion("mischara >=", value, "mischara");
            return (Criteria) this;
        }

        public Criteria andMischaraLessThan(Integer value) {
            addCriterion("mischara <", value, "mischara");
            return (Criteria) this;
        }

        public Criteria andMischaraLessThanOrEqualTo(Integer value) {
            addCriterion("mischara <=", value, "mischara");
            return (Criteria) this;
        }

        public Criteria andMischaraIn(List<Integer> values) {
            addCriterion("mischara in", values, "mischara");
            return (Criteria) this;
        }

        public Criteria andMischaraNotIn(List<Integer> values) {
            addCriterion("mischara not in", values, "mischara");
            return (Criteria) this;
        }

        public Criteria andMischaraBetween(Integer value1, Integer value2) {
            addCriterion("mischara between", value1, value2, "mischara");
            return (Criteria) this;
        }

        public Criteria andMischaraNotBetween(Integer value1, Integer value2) {
            addCriterion("mischara not between", value1, value2, "mischara");
            return (Criteria) this;
        }

        public Criteria andMtypeIsNull() {
            addCriterion("mtype is null");
            return (Criteria) this;
        }

        public Criteria andMtypeIsNotNull() {
            addCriterion("mtype is not null");
            return (Criteria) this;
        }

        public Criteria andMtypeEqualTo(Integer value) {
            addCriterion("mtype =", value, "mtype");
            return (Criteria) this;
        }

        public Criteria andMtypeNotEqualTo(Integer value) {
            addCriterion("mtype <>", value, "mtype");
            return (Criteria) this;
        }

        public Criteria andMtypeGreaterThan(Integer value) {
            addCriterion("mtype >", value, "mtype");
            return (Criteria) this;
        }

        public Criteria andMtypeGreaterThanOrEqualTo(Integer value) {
            addCriterion("mtype >=", value, "mtype");
            return (Criteria) this;
        }

        public Criteria andMtypeLessThan(Integer value) {
            addCriterion("mtype <", value, "mtype");
            return (Criteria) this;
        }

        public Criteria andMtypeLessThanOrEqualTo(Integer value) {
            addCriterion("mtype <=", value, "mtype");
            return (Criteria) this;
        }

        public Criteria andMtypeIn(List<Integer> values) {
            addCriterion("mtype in", values, "mtype");
            return (Criteria) this;
        }

        public Criteria andMtypeNotIn(List<Integer> values) {
            addCriterion("mtype not in", values, "mtype");
            return (Criteria) this;
        }

        public Criteria andMtypeBetween(Integer value1, Integer value2) {
            addCriterion("mtype between", value1, value2, "mtype");
            return (Criteria) this;
        }

        public Criteria andMtypeNotBetween(Integer value1, Integer value2) {
            addCriterion("mtype not between", value1, value2, "mtype");
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