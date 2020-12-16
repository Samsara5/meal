package com.wjw.meal.Pojo;

import java.util.ArrayList;
import java.util.List;

public class EmployeeExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public EmployeeExample() {
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

        public Criteria andEidIsNull() {
            addCriterion("eid is null");
            return (Criteria) this;
        }

        public Criteria andEidIsNotNull() {
            addCriterion("eid is not null");
            return (Criteria) this;
        }

        public Criteria andEidEqualTo(String value) {
            addCriterion("eid =", value, "eid");
            return (Criteria) this;
        }

        public Criteria andEidNotEqualTo(String value) {
            addCriterion("eid <>", value, "eid");
            return (Criteria) this;
        }

        public Criteria andEidGreaterThan(String value) {
            addCriterion("eid >", value, "eid");
            return (Criteria) this;
        }

        public Criteria andEidGreaterThanOrEqualTo(String value) {
            addCriterion("eid >=", value, "eid");
            return (Criteria) this;
        }

        public Criteria andEidLessThan(String value) {
            addCriterion("eid <", value, "eid");
            return (Criteria) this;
        }

        public Criteria andEidLessThanOrEqualTo(String value) {
            addCriterion("eid <=", value, "eid");
            return (Criteria) this;
        }

        public Criteria andEidLike(String value) {
            addCriterion("eid like", value, "eid");
            return (Criteria) this;
        }

        public Criteria andEidNotLike(String value) {
            addCriterion("eid not like", value, "eid");
            return (Criteria) this;
        }

        public Criteria andEidIn(List<String> values) {
            addCriterion("eid in", values, "eid");
            return (Criteria) this;
        }

        public Criteria andEidNotIn(List<String> values) {
            addCriterion("eid not in", values, "eid");
            return (Criteria) this;
        }

        public Criteria andEidBetween(String value1, String value2) {
            addCriterion("eid between", value1, value2, "eid");
            return (Criteria) this;
        }

        public Criteria andEidNotBetween(String value1, String value2) {
            addCriterion("eid not between", value1, value2, "eid");
            return (Criteria) this;
        }

        public Criteria andEnameIsNull() {
            addCriterion("ename is null");
            return (Criteria) this;
        }

        public Criteria andEnameIsNotNull() {
            addCriterion("ename is not null");
            return (Criteria) this;
        }

        public Criteria andEnameEqualTo(String value) {
            addCriterion("ename =", value, "ename");
            return (Criteria) this;
        }

        public Criteria andEnameNotEqualTo(String value) {
            addCriterion("ename <>", value, "ename");
            return (Criteria) this;
        }

        public Criteria andEnameGreaterThan(String value) {
            addCriterion("ename >", value, "ename");
            return (Criteria) this;
        }

        public Criteria andEnameGreaterThanOrEqualTo(String value) {
            addCriterion("ename >=", value, "ename");
            return (Criteria) this;
        }

        public Criteria andEnameLessThan(String value) {
            addCriterion("ename <", value, "ename");
            return (Criteria) this;
        }

        public Criteria andEnameLessThanOrEqualTo(String value) {
            addCriterion("ename <=", value, "ename");
            return (Criteria) this;
        }

        public Criteria andEnameLike(String value) {
            addCriterion("ename like", value, "ename");
            return (Criteria) this;
        }

        public Criteria andEnameNotLike(String value) {
            addCriterion("ename not like", value, "ename");
            return (Criteria) this;
        }

        public Criteria andEnameIn(List<String> values) {
            addCriterion("ename in", values, "ename");
            return (Criteria) this;
        }

        public Criteria andEnameNotIn(List<String> values) {
            addCriterion("ename not in", values, "ename");
            return (Criteria) this;
        }

        public Criteria andEnameBetween(String value1, String value2) {
            addCriterion("ename between", value1, value2, "ename");
            return (Criteria) this;
        }

        public Criteria andEnameNotBetween(String value1, String value2) {
            addCriterion("ename not between", value1, value2, "ename");
            return (Criteria) this;
        }

        public Criteria andEroleidIsNull() {
            addCriterion("eroleid is null");
            return (Criteria) this;
        }

        public Criteria andEroleidIsNotNull() {
            addCriterion("eroleid is not null");
            return (Criteria) this;
        }

        public Criteria andEroleidEqualTo(Integer value) {
            addCriterion("eroleid =", value, "eroleid");
            return (Criteria) this;
        }

        public Criteria andEroleidNotEqualTo(Integer value) {
            addCriterion("eroleid <>", value, "eroleid");
            return (Criteria) this;
        }

        public Criteria andEroleidGreaterThan(Integer value) {
            addCriterion("eroleid >", value, "eroleid");
            return (Criteria) this;
        }

        public Criteria andEroleidGreaterThanOrEqualTo(Integer value) {
            addCriterion("eroleid >=", value, "eroleid");
            return (Criteria) this;
        }

        public Criteria andEroleidLessThan(Integer value) {
            addCriterion("eroleid <", value, "eroleid");
            return (Criteria) this;
        }

        public Criteria andEroleidLessThanOrEqualTo(Integer value) {
            addCriterion("eroleid <=", value, "eroleid");
            return (Criteria) this;
        }

        public Criteria andEroleidIn(List<Integer> values) {
            addCriterion("eroleid in", values, "eroleid");
            return (Criteria) this;
        }

        public Criteria andEroleidNotIn(List<Integer> values) {
            addCriterion("eroleid not in", values, "eroleid");
            return (Criteria) this;
        }

        public Criteria andEroleidBetween(Integer value1, Integer value2) {
            addCriterion("eroleid between", value1, value2, "eroleid");
            return (Criteria) this;
        }

        public Criteria andEroleidNotBetween(Integer value1, Integer value2) {
            addCriterion("eroleid not between", value1, value2, "eroleid");
            return (Criteria) this;
        }

        public Criteria andEusernameIsNull() {
            addCriterion("eusername is null");
            return (Criteria) this;
        }

        public Criteria andEusernameIsNotNull() {
            addCriterion("eusername is not null");
            return (Criteria) this;
        }

        public Criteria andEusernameEqualTo(String value) {
            addCriterion("eusername =", value, "eusername");
            return (Criteria) this;
        }

        public Criteria andEusernameNotEqualTo(String value) {
            addCriterion("eusername <>", value, "eusername");
            return (Criteria) this;
        }

        public Criteria andEusernameGreaterThan(String value) {
            addCriterion("eusername >", value, "eusername");
            return (Criteria) this;
        }

        public Criteria andEusernameGreaterThanOrEqualTo(String value) {
            addCriterion("eusername >=", value, "eusername");
            return (Criteria) this;
        }

        public Criteria andEusernameLessThan(String value) {
            addCriterion("eusername <", value, "eusername");
            return (Criteria) this;
        }

        public Criteria andEusernameLessThanOrEqualTo(String value) {
            addCriterion("eusername <=", value, "eusername");
            return (Criteria) this;
        }

        public Criteria andEusernameLike(String value) {
            addCriterion("eusername like", value, "eusername");
            return (Criteria) this;
        }

        public Criteria andEusernameNotLike(String value) {
            addCriterion("eusername not like", value, "eusername");
            return (Criteria) this;
        }

        public Criteria andEusernameIn(List<String> values) {
            addCriterion("eusername in", values, "eusername");
            return (Criteria) this;
        }

        public Criteria andEusernameNotIn(List<String> values) {
            addCriterion("eusername not in", values, "eusername");
            return (Criteria) this;
        }

        public Criteria andEusernameBetween(String value1, String value2) {
            addCriterion("eusername between", value1, value2, "eusername");
            return (Criteria) this;
        }

        public Criteria andEusernameNotBetween(String value1, String value2) {
            addCriterion("eusername not between", value1, value2, "eusername");
            return (Criteria) this;
        }

        public Criteria andEpasswordIsNull() {
            addCriterion("epassword is null");
            return (Criteria) this;
        }

        public Criteria andEpasswordIsNotNull() {
            addCriterion("epassword is not null");
            return (Criteria) this;
        }

        public Criteria andEpasswordEqualTo(String value) {
            addCriterion("epassword =", value, "epassword");
            return (Criteria) this;
        }

        public Criteria andEpasswordNotEqualTo(String value) {
            addCriterion("epassword <>", value, "epassword");
            return (Criteria) this;
        }

        public Criteria andEpasswordGreaterThan(String value) {
            addCriterion("epassword >", value, "epassword");
            return (Criteria) this;
        }

        public Criteria andEpasswordGreaterThanOrEqualTo(String value) {
            addCriterion("epassword >=", value, "epassword");
            return (Criteria) this;
        }

        public Criteria andEpasswordLessThan(String value) {
            addCriterion("epassword <", value, "epassword");
            return (Criteria) this;
        }

        public Criteria andEpasswordLessThanOrEqualTo(String value) {
            addCriterion("epassword <=", value, "epassword");
            return (Criteria) this;
        }

        public Criteria andEpasswordLike(String value) {
            addCriterion("epassword like", value, "epassword");
            return (Criteria) this;
        }

        public Criteria andEpasswordNotLike(String value) {
            addCriterion("epassword not like", value, "epassword");
            return (Criteria) this;
        }

        public Criteria andEpasswordIn(List<String> values) {
            addCriterion("epassword in", values, "epassword");
            return (Criteria) this;
        }

        public Criteria andEpasswordNotIn(List<String> values) {
            addCriterion("epassword not in", values, "epassword");
            return (Criteria) this;
        }

        public Criteria andEpasswordBetween(String value1, String value2) {
            addCriterion("epassword between", value1, value2, "epassword");
            return (Criteria) this;
        }

        public Criteria andEpasswordNotBetween(String value1, String value2) {
            addCriterion("epassword not between", value1, value2, "epassword");
            return (Criteria) this;
        }

        public Criteria andEsexIsNull() {
            addCriterion("esex is null");
            return (Criteria) this;
        }

        public Criteria andEsexIsNotNull() {
            addCriterion("esex is not null");
            return (Criteria) this;
        }

        public Criteria andEsexEqualTo(Integer value) {
            addCriterion("esex =", value, "esex");
            return (Criteria) this;
        }

        public Criteria andEsexNotEqualTo(Integer value) {
            addCriterion("esex <>", value, "esex");
            return (Criteria) this;
        }

        public Criteria andEsexGreaterThan(Integer value) {
            addCriterion("esex >", value, "esex");
            return (Criteria) this;
        }

        public Criteria andEsexGreaterThanOrEqualTo(Integer value) {
            addCriterion("esex >=", value, "esex");
            return (Criteria) this;
        }

        public Criteria andEsexLessThan(Integer value) {
            addCriterion("esex <", value, "esex");
            return (Criteria) this;
        }

        public Criteria andEsexLessThanOrEqualTo(Integer value) {
            addCriterion("esex <=", value, "esex");
            return (Criteria) this;
        }

        public Criteria andEsexIn(List<Integer> values) {
            addCriterion("esex in", values, "esex");
            return (Criteria) this;
        }

        public Criteria andEsexNotIn(List<Integer> values) {
            addCriterion("esex not in", values, "esex");
            return (Criteria) this;
        }

        public Criteria andEsexBetween(Integer value1, Integer value2) {
            addCriterion("esex between", value1, value2, "esex");
            return (Criteria) this;
        }

        public Criteria andEsexNotBetween(Integer value1, Integer value2) {
            addCriterion("esex not between", value1, value2, "esex");
            return (Criteria) this;
        }

        public Criteria andEphoneIsNull() {
            addCriterion("ephone is null");
            return (Criteria) this;
        }

        public Criteria andEphoneIsNotNull() {
            addCriterion("ephone is not null");
            return (Criteria) this;
        }

        public Criteria andEphoneEqualTo(String value) {
            addCriterion("ephone =", value, "ephone");
            return (Criteria) this;
        }

        public Criteria andEphoneNotEqualTo(String value) {
            addCriterion("ephone <>", value, "ephone");
            return (Criteria) this;
        }

        public Criteria andEphoneGreaterThan(String value) {
            addCriterion("ephone >", value, "ephone");
            return (Criteria) this;
        }

        public Criteria andEphoneGreaterThanOrEqualTo(String value) {
            addCriterion("ephone >=", value, "ephone");
            return (Criteria) this;
        }

        public Criteria andEphoneLessThan(String value) {
            addCriterion("ephone <", value, "ephone");
            return (Criteria) this;
        }

        public Criteria andEphoneLessThanOrEqualTo(String value) {
            addCriterion("ephone <=", value, "ephone");
            return (Criteria) this;
        }

        public Criteria andEphoneLike(String value) {
            addCriterion("ephone like", value, "ephone");
            return (Criteria) this;
        }

        public Criteria andEphoneNotLike(String value) {
            addCriterion("ephone not like", value, "ephone");
            return (Criteria) this;
        }

        public Criteria andEphoneIn(List<String> values) {
            addCriterion("ephone in", values, "ephone");
            return (Criteria) this;
        }

        public Criteria andEphoneNotIn(List<String> values) {
            addCriterion("ephone not in", values, "ephone");
            return (Criteria) this;
        }

        public Criteria andEphoneBetween(String value1, String value2) {
            addCriterion("ephone between", value1, value2, "ephone");
            return (Criteria) this;
        }

        public Criteria andEphoneNotBetween(String value1, String value2) {
            addCriterion("ephone not between", value1, value2, "ephone");
            return (Criteria) this;
        }

        public Criteria andEstateIsNull() {
            addCriterion("estate is null");
            return (Criteria) this;
        }

        public Criteria andEstateIsNotNull() {
            addCriterion("estate is not null");
            return (Criteria) this;
        }

        public Criteria andEstateEqualTo(Integer value) {
            addCriterion("estate =", value, "estate");
            return (Criteria) this;
        }

        public Criteria andEstateNotEqualTo(Integer value) {
            addCriterion("estate <>", value, "estate");
            return (Criteria) this;
        }

        public Criteria andEstateGreaterThan(Integer value) {
            addCriterion("estate >", value, "estate");
            return (Criteria) this;
        }

        public Criteria andEstateGreaterThanOrEqualTo(Integer value) {
            addCriterion("estate >=", value, "estate");
            return (Criteria) this;
        }

        public Criteria andEstateLessThan(Integer value) {
            addCriterion("estate <", value, "estate");
            return (Criteria) this;
        }

        public Criteria andEstateLessThanOrEqualTo(Integer value) {
            addCriterion("estate <=", value, "estate");
            return (Criteria) this;
        }

        public Criteria andEstateIn(List<Integer> values) {
            addCriterion("estate in", values, "estate");
            return (Criteria) this;
        }

        public Criteria andEstateNotIn(List<Integer> values) {
            addCriterion("estate not in", values, "estate");
            return (Criteria) this;
        }

        public Criteria andEstateBetween(Integer value1, Integer value2) {
            addCriterion("estate between", value1, value2, "estate");
            return (Criteria) this;
        }

        public Criteria andEstateNotBetween(Integer value1, Integer value2) {
            addCriterion("estate not between", value1, value2, "estate");
            return (Criteria) this;
        }

        public Criteria andDeptidIsNull() {
            addCriterion("deptid is null");
            return (Criteria) this;
        }

        public Criteria andDeptidIsNotNull() {
            addCriterion("deptid is not null");
            return (Criteria) this;
        }

        public Criteria andDeptidEqualTo(Integer value) {
            addCriterion("deptid =", value, "deptid");
            return (Criteria) this;
        }

        public Criteria andDeptidNotEqualTo(Integer value) {
            addCriterion("deptid <>", value, "deptid");
            return (Criteria) this;
        }

        public Criteria andDeptidGreaterThan(Integer value) {
            addCriterion("deptid >", value, "deptid");
            return (Criteria) this;
        }

        public Criteria andDeptidGreaterThanOrEqualTo(Integer value) {
            addCriterion("deptid >=", value, "deptid");
            return (Criteria) this;
        }

        public Criteria andDeptidLessThan(Integer value) {
            addCriterion("deptid <", value, "deptid");
            return (Criteria) this;
        }

        public Criteria andDeptidLessThanOrEqualTo(Integer value) {
            addCriterion("deptid <=", value, "deptid");
            return (Criteria) this;
        }

        public Criteria andDeptidIn(List<Integer> values) {
            addCriterion("deptid in", values, "deptid");
            return (Criteria) this;
        }

        public Criteria andDeptidNotIn(List<Integer> values) {
            addCriterion("deptid not in", values, "deptid");
            return (Criteria) this;
        }

        public Criteria andDeptidBetween(Integer value1, Integer value2) {
            addCriterion("deptid between", value1, value2, "deptid");
            return (Criteria) this;
        }

        public Criteria andDeptidNotBetween(Integer value1, Integer value2) {
            addCriterion("deptid not between", value1, value2, "deptid");
            return (Criteria) this;
        }

        public Criteria andSalaryIsNull() {
            addCriterion("salary is null");
            return (Criteria) this;
        }

        public Criteria andSalaryIsNotNull() {
            addCriterion("salary is not null");
            return (Criteria) this;
        }

        public Criteria andSalaryEqualTo(String value) {
            addCriterion("salary =", value, "salary");
            return (Criteria) this;
        }

        public Criteria andSalaryNotEqualTo(String value) {
            addCriterion("salary <>", value, "salary");
            return (Criteria) this;
        }

        public Criteria andSalaryGreaterThan(String value) {
            addCriterion("salary >", value, "salary");
            return (Criteria) this;
        }

        public Criteria andSalaryGreaterThanOrEqualTo(String value) {
            addCriterion("salary >=", value, "salary");
            return (Criteria) this;
        }

        public Criteria andSalaryLessThan(String value) {
            addCriterion("salary <", value, "salary");
            return (Criteria) this;
        }

        public Criteria andSalaryLessThanOrEqualTo(String value) {
            addCriterion("salary <=", value, "salary");
            return (Criteria) this;
        }

        public Criteria andSalaryLike(String value) {
            addCriterion("salary like", value, "salary");
            return (Criteria) this;
        }

        public Criteria andSalaryNotLike(String value) {
            addCriterion("salary not like", value, "salary");
            return (Criteria) this;
        }

        public Criteria andSalaryIn(List<String> values) {
            addCriterion("salary in", values, "salary");
            return (Criteria) this;
        }

        public Criteria andSalaryNotIn(List<String> values) {
            addCriterion("salary not in", values, "salary");
            return (Criteria) this;
        }

        public Criteria andSalaryBetween(String value1, String value2) {
            addCriterion("salary between", value1, value2, "salary");
            return (Criteria) this;
        }

        public Criteria andSalaryNotBetween(String value1, String value2) {
            addCriterion("salary not between", value1, value2, "salary");
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