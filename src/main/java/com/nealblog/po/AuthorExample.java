package com.nealblog.po;

import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

public class AuthorExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public AuthorExample() {
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

        protected void addCriterionForJDBCDate(String condition, Date value, String property) {
            if (value == null) {
                throw new RuntimeException("Value for " + property + " cannot be null");
            }
            addCriterion(condition, new java.sql.Date(value.getTime()), property);
        }

        protected void addCriterionForJDBCDate(String condition, List<Date> values, String property) {
            if (values == null || values.size() == 0) {
                throw new RuntimeException("Value list for " + property + " cannot be null or empty");
            }
            List<java.sql.Date> dateList = new ArrayList<java.sql.Date>();
            Iterator<Date> iter = values.iterator();
            while (iter.hasNext()) {
                dateList.add(new java.sql.Date(iter.next().getTime()));
            }
            addCriterion(condition, dateList, property);
        }

        protected void addCriterionForJDBCDate(String condition, Date value1, Date value2, String property) {
            if (value1 == null || value2 == null) {
                throw new RuntimeException("Between values for " + property + " cannot be null");
            }
            addCriterion(condition, new java.sql.Date(value1.getTime()), new java.sql.Date(value2.getTime()), property);
        }

        public Criteria andAuthoridIsNull() {
            addCriterion("AuthorId is null");
            return (Criteria) this;
        }

        public Criteria andAuthoridIsNotNull() {
            addCriterion("AuthorId is not null");
            return (Criteria) this;
        }

        public Criteria andAuthoridEqualTo(Integer value) {
            addCriterion("AuthorId =", value, "authorid");
            return (Criteria) this;
        }

        public Criteria andAuthoridNotEqualTo(Integer value) {
            addCriterion("AuthorId <>", value, "authorid");
            return (Criteria) this;
        }

        public Criteria andAuthoridGreaterThan(Integer value) {
            addCriterion("AuthorId >", value, "authorid");
            return (Criteria) this;
        }

        public Criteria andAuthoridGreaterThanOrEqualTo(Integer value) {
            addCriterion("AuthorId >=", value, "authorid");
            return (Criteria) this;
        }

        public Criteria andAuthoridLessThan(Integer value) {
            addCriterion("AuthorId <", value, "authorid");
            return (Criteria) this;
        }

        public Criteria andAuthoridLessThanOrEqualTo(Integer value) {
            addCriterion("AuthorId <=", value, "authorid");
            return (Criteria) this;
        }

        public Criteria andAuthoridIn(List<Integer> values) {
            addCriterion("AuthorId in", values, "authorid");
            return (Criteria) this;
        }

        public Criteria andAuthoridNotIn(List<Integer> values) {
            addCriterion("AuthorId not in", values, "authorid");
            return (Criteria) this;
        }

        public Criteria andAuthoridBetween(Integer value1, Integer value2) {
            addCriterion("AuthorId between", value1, value2, "authorid");
            return (Criteria) this;
        }

        public Criteria andAuthoridNotBetween(Integer value1, Integer value2) {
            addCriterion("AuthorId not between", value1, value2, "authorid");
            return (Criteria) this;
        }

        public Criteria andAuthornameIsNull() {
            addCriterion("AuthorName is null");
            return (Criteria) this;
        }

        public Criteria andAuthornameIsNotNull() {
            addCriterion("AuthorName is not null");
            return (Criteria) this;
        }

        public Criteria andAuthornameEqualTo(String value) {
            addCriterion("AuthorName =", value, "authorname");
            return (Criteria) this;
        }

        public Criteria andAuthornameNotEqualTo(String value) {
            addCriterion("AuthorName <>", value, "authorname");
            return (Criteria) this;
        }

        public Criteria andAuthornameGreaterThan(String value) {
            addCriterion("AuthorName >", value, "authorname");
            return (Criteria) this;
        }

        public Criteria andAuthornameGreaterThanOrEqualTo(String value) {
            addCriterion("AuthorName >=", value, "authorname");
            return (Criteria) this;
        }

        public Criteria andAuthornameLessThan(String value) {
            addCriterion("AuthorName <", value, "authorname");
            return (Criteria) this;
        }

        public Criteria andAuthornameLessThanOrEqualTo(String value) {
            addCriterion("AuthorName <=", value, "authorname");
            return (Criteria) this;
        }

        public Criteria andAuthornameLike(String value) {
            addCriterion("AuthorName like", value, "authorname");
            return (Criteria) this;
        }

        public Criteria andAuthornameNotLike(String value) {
            addCriterion("AuthorName not like", value, "authorname");
            return (Criteria) this;
        }

        public Criteria andAuthornameIn(List<String> values) {
            addCriterion("AuthorName in", values, "authorname");
            return (Criteria) this;
        }

        public Criteria andAuthornameNotIn(List<String> values) {
            addCriterion("AuthorName not in", values, "authorname");
            return (Criteria) this;
        }

        public Criteria andAuthornameBetween(String value1, String value2) {
            addCriterion("AuthorName between", value1, value2, "authorname");
            return (Criteria) this;
        }

        public Criteria andAuthornameNotBetween(String value1, String value2) {
            addCriterion("AuthorName not between", value1, value2, "authorname");
            return (Criteria) this;
        }

        public Criteria andAuthorpasswordIsNull() {
            addCriterion("AuthorPassword is null");
            return (Criteria) this;
        }

        public Criteria andAuthorpasswordIsNotNull() {
            addCriterion("AuthorPassword is not null");
            return (Criteria) this;
        }

        public Criteria andAuthorpasswordEqualTo(String value) {
            addCriterion("AuthorPassword =", value, "authorpassword");
            return (Criteria) this;
        }

        public Criteria andAuthorpasswordNotEqualTo(String value) {
            addCriterion("AuthorPassword <>", value, "authorpassword");
            return (Criteria) this;
        }

        public Criteria andAuthorpasswordGreaterThan(String value) {
            addCriterion("AuthorPassword >", value, "authorpassword");
            return (Criteria) this;
        }

        public Criteria andAuthorpasswordGreaterThanOrEqualTo(String value) {
            addCriterion("AuthorPassword >=", value, "authorpassword");
            return (Criteria) this;
        }

        public Criteria andAuthorpasswordLessThan(String value) {
            addCriterion("AuthorPassword <", value, "authorpassword");
            return (Criteria) this;
        }

        public Criteria andAuthorpasswordLessThanOrEqualTo(String value) {
            addCriterion("AuthorPassword <=", value, "authorpassword");
            return (Criteria) this;
        }

        public Criteria andAuthorpasswordLike(String value) {
            addCriterion("AuthorPassword like", value, "authorpassword");
            return (Criteria) this;
        }

        public Criteria andAuthorpasswordNotLike(String value) {
            addCriterion("AuthorPassword not like", value, "authorpassword");
            return (Criteria) this;
        }

        public Criteria andAuthorpasswordIn(List<String> values) {
            addCriterion("AuthorPassword in", values, "authorpassword");
            return (Criteria) this;
        }

        public Criteria andAuthorpasswordNotIn(List<String> values) {
            addCriterion("AuthorPassword not in", values, "authorpassword");
            return (Criteria) this;
        }

        public Criteria andAuthorpasswordBetween(String value1, String value2) {
            addCriterion("AuthorPassword between", value1, value2, "authorpassword");
            return (Criteria) this;
        }

        public Criteria andAuthorpasswordNotBetween(String value1, String value2) {
            addCriterion("AuthorPassword not between", value1, value2, "authorpassword");
            return (Criteria) this;
        }

        public Criteria andPublishcountIsNull() {
            addCriterion("PublishCount is null");
            return (Criteria) this;
        }

        public Criteria andPublishcountIsNotNull() {
            addCriterion("PublishCount is not null");
            return (Criteria) this;
        }

        public Criteria andPublishcountEqualTo(Integer value) {
            addCriterion("PublishCount =", value, "publishcount");
            return (Criteria) this;
        }

        public Criteria andPublishcountNotEqualTo(Integer value) {
            addCriterion("PublishCount <>", value, "publishcount");
            return (Criteria) this;
        }

        public Criteria andPublishcountGreaterThan(Integer value) {
            addCriterion("PublishCount >", value, "publishcount");
            return (Criteria) this;
        }

        public Criteria andPublishcountGreaterThanOrEqualTo(Integer value) {
            addCriterion("PublishCount >=", value, "publishcount");
            return (Criteria) this;
        }

        public Criteria andPublishcountLessThan(Integer value) {
            addCriterion("PublishCount <", value, "publishcount");
            return (Criteria) this;
        }

        public Criteria andPublishcountLessThanOrEqualTo(Integer value) {
            addCriterion("PublishCount <=", value, "publishcount");
            return (Criteria) this;
        }

        public Criteria andPublishcountIn(List<Integer> values) {
            addCriterion("PublishCount in", values, "publishcount");
            return (Criteria) this;
        }

        public Criteria andPublishcountNotIn(List<Integer> values) {
            addCriterion("PublishCount not in", values, "publishcount");
            return (Criteria) this;
        }

        public Criteria andPublishcountBetween(Integer value1, Integer value2) {
            addCriterion("PublishCount between", value1, value2, "publishcount");
            return (Criteria) this;
        }

        public Criteria andPublishcountNotBetween(Integer value1, Integer value2) {
            addCriterion("PublishCount not between", value1, value2, "publishcount");
            return (Criteria) this;
        }

        public Criteria andPublishtimeIsNull() {
            addCriterion("PublishTime is null");
            return (Criteria) this;
        }

        public Criteria andPublishtimeIsNotNull() {
            addCriterion("PublishTime is not null");
            return (Criteria) this;
        }

        public Criteria andPublishtimeEqualTo(Date value) {
            addCriterionForJDBCDate("PublishTime =", value, "publishtime");
            return (Criteria) this;
        }

        public Criteria andPublishtimeNotEqualTo(Date value) {
            addCriterionForJDBCDate("PublishTime <>", value, "publishtime");
            return (Criteria) this;
        }

        public Criteria andPublishtimeGreaterThan(Date value) {
            addCriterionForJDBCDate("PublishTime >", value, "publishtime");
            return (Criteria) this;
        }

        public Criteria andPublishtimeGreaterThanOrEqualTo(Date value) {
            addCriterionForJDBCDate("PublishTime >=", value, "publishtime");
            return (Criteria) this;
        }

        public Criteria andPublishtimeLessThan(Date value) {
            addCriterionForJDBCDate("PublishTime <", value, "publishtime");
            return (Criteria) this;
        }

        public Criteria andPublishtimeLessThanOrEqualTo(Date value) {
            addCriterionForJDBCDate("PublishTime <=", value, "publishtime");
            return (Criteria) this;
        }

        public Criteria andPublishtimeIn(List<Date> values) {
            addCriterionForJDBCDate("PublishTime in", values, "publishtime");
            return (Criteria) this;
        }

        public Criteria andPublishtimeNotIn(List<Date> values) {
            addCriterionForJDBCDate("PublishTime not in", values, "publishtime");
            return (Criteria) this;
        }

        public Criteria andPublishtimeBetween(Date value1, Date value2) {
            addCriterionForJDBCDate("PublishTime between", value1, value2, "publishtime");
            return (Criteria) this;
        }

        public Criteria andPublishtimeNotBetween(Date value1, Date value2) {
            addCriterionForJDBCDate("PublishTime not between", value1, value2, "publishtime");
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