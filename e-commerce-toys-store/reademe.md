# E-Commerxe Toys Sore Analysis

## Project Overview

This project analyzes customer shopping behavior using Python, Pandas, SQL, and Power BI for data visualization. The goal was to identify customer segments, purchasing trends, and revenue patterns to help improve business decision-making.

## Objectives

- Analyze customer purchase behavior
- Identify loyal and returning customers
- Discover sales trends
- Perform customer segmentation
- Generate actionable business insights

## Visualizations

The project includes:

- Sales trend charts
- Trend
- Bar plots
- Customer segmentation visuals

![Sales Dashboard](Power BI Dasboard ss/Power BI Dashboard (Page 1))

- ## Dataset

- Source: Kaggle
- Rows: 50,000+
- Columns: Customer ID, Product Category, Purchase Amount, Age, Gender, Payment Method, etc.

- ## Tools & Technologies

- Python
- Pandas
- SQL
- Jupyter Notebook
- Power BI

- ## Data Cleaning

- Handled missing values
- There were no other issues in dataset

- ## Exploratory Data Analysis

Performed analysis on:

- yearly revenue and order trends
- Top products by revenue and quantity
- Customer life time value
- Customer retention patterns/Customer Segmentation
- Average days between orders (repeat purchase)
- trend in website sessions and order volume
- Which marketing channels have been most successful

## Key Insights

# E-commerce Performance Analysis: KPI Insights

## Executive Summary

This analysis examines key performance indicators across revenue trends, customer behavior, product performance, and marketing effectiveness for an e-commerce business operating from 2012-2015.

---

## 📊 Revenue & Growth Metrics

### Yearly Revenue Trend (2012-2015)

| Year | Total Orders | Total Revenue | Avg Price | YoY Growth |
|------|--------------|---------------|-----------|------------|
| 2012 | 2,586 | $129,274 | $49.99 | - |
| 2013 | 7,447 | $393,248 | $52.81 | +204% |
| 2014 | 16,860 | $1,075,612 | $63.80 | +174% |
| 2015 | 5,420 | $340,376 | $62.80 | -68% |

### Key Findings:
- **Total Revenue Growth (2012-2014)**: $129K → $1.08M = **732% increase**
- **2014-2015 Decline**: Revenue dropped 68%, indicating a significant business challenge
- **Average Order Value (AOV)**: Consistently increased from $50 to $63 (+26%), showing successful upselling strategies
- **Order Volume**: Peak in 2014 with 16,860 orders, then sharp 68% decline in 2015

---

## 🎯 Product Performance Insights

### Top Products by Revenue

| Product | Product ID | Total Revenue | Order Count | AOV |
|---------|------------|---------------|-------------|-----|
| The Original Mr. Fuzzy | 1 | $1,419,768 | 23,861 | $59.52 |
| The Forever Love Bear | 2 | $318,109 | 4,803 | $66.23 |
| The Birthday Sugar Panda | 3 | $180,857 | 3,068 | $58.95 |
| The Hudson River Mini Bear | 4 | $19,776 | 581 | $34.03 |

### Key Insights:
- **Heavy Product Concentration**: Top product generates 4.5x more revenue than #2
- **The Original Mr. Fuzzy** accounts for ~73% of all revenue
- **Product Diversification Risk**: Over-reliance on single hero product
- **Premium Product Opportunity**: Forever Love Bear has highest AOV at $66

---

## 👥 Customer Behavior & Retention

### Customer Segmentation Analysis

| Customer Segment | Number of Customers | Percentage | Avg Orders |
|------------------|---------------------|------------|------------|
| One-time (new) | 31,105 | 98.14% | 1 |
| Repetitive (2-8 orders) | 591 | 1.86% | 2-8 |
| Loyal (>8 orders) | 0 | 0% | - |

### 🚨 Critical Finding: 98.14% Customer Churn Rate

This is the most alarming metric in the entire analysis. Nearly every customer purchases once and never returns.

### Customer Lifetime Value (Top 10 Customers)

| User ID | Total Orders | Total Revenue | First Order | Last Order | Customer Lifespan |
|---------|--------------|---------------|-------------|------------|-------------------|
| 341972 | 3 | $251.94 | 2014-12-28 | 2015-03-18 | ~2.5 months |
| 324814 | 3 | $245.95 | 2015-02-04 | 2015-03-18 | ~1.5 months |
| 172266 | 3 | $237.95 | 2014-04-15 | 2014-05-13 | ~1 month |
| 275098 | 3 | $235.95 | 2014-09-18 | 2014-11-14 | ~2 months |

**CLV Insights:**
- Top customers generate only $206-$252 lifetime revenue
- Average customer lifespan: 1-3 months
- Maximum observed orders per customer: 3
- Very low repeat purchase rate

### Purchase Frequency

**Average Time Between Orders: 34.48 days (~5 weeks)**

This metric suggests:
- Monthly promotional cycles could align with natural purchase rhythm
- Email campaigns should target 30-35 day post-purchase window
- Subscription/auto-replenish models might not fit current purchase patterns

---

## 📱 Marketing Channel Performance

### Channel Volume Analysis

| Campaign | Content | Sessions | Market Share |
|----------|---------|----------|--------------|
| nonbrand | g_ad_1 | 282,706 | 52.4% |
| (none) | (none) | 83,328 | 15.4% |
| brand | g_ad_2 | 33,329 | 6.2% |
| brand | b_ad_2 | 7,914 | 1.5% |
| nonbrand | b_ad_1 | 54,909 | 10.2% |
| pilot | social_ad_1 | 5,095 | 0.9% |
| desktop_targeted | social_ad_2 | 5,590 | 1.0% |

### Key Findings:
- **Nonbrand Google Ads dominate**: 52% of all traffic
- **Organic traffic**: 15% suggests SEO opportunities
- **Brand awareness**: Only 7.7% of traffic is brand-related
- **Social channels**: Underperforming at <2% combined

### Conversion Rate Trends

| Year | Sessions | Orders | Conversion Rate |
|------|----------|--------|-----------------|
| 2012 | 62,470 | 2,586 | 4.14% |
| 2013 | 112,781 | 7,447 | 6.60% |
| 2014 | 233,422 | 16,860 | 7.22% |
| 2015 | 64,198 | 5,420 | 8.44% |

### 🎯 Critical Paradox

**Conversion rate improved from 4.14% to 8.44% (+104%) while revenue declined 68% in 2015**

This indicates:
- Traffic volume collapsed in 2015 (233K → 64K sessions = -72% drop)
- Website/funnel optimization working well
- Major traffic acquisition or marketing budget issue
- Possible Google algorithm change or competitor displacement

---

## 🚨 Critical Business Issues Identified

### 1. **Catastrophic Customer Retention (98% One-Time Purchase Rate)**
**Severity: CRITICAL**

- Only 591 out of 31,696 customers made repeat purchases
- No loyalty program or retention strategy evident
- Customer acquisition cost (CAC) likely unsustainable
- Business model fundamentally broken

### 2. **Revenue Collapse (2014-2015)**
**Severity: HIGH**

- 68% revenue decline year-over-year
- 72% traffic decline despite improved conversion
- Suggests external factors: marketing budget cuts, algorithm changes, or competitive pressure

### 3. **Product Concentration Risk**
**Severity: MEDIUM**

- 73% of revenue from single product
- If hero product faces issues (supply, trends, competition), entire business at risk
- Limited product portfolio diversity

### 4. **No Sustainable Growth Engine**
**Severity: HIGH**

- Growth driven entirely by new customer acquisition
- Zero repeat purchase optimization
- High customer acquisition dependency unsustainable long-term

---

## 💡 Strategic Recommendations

### Priority 1: Fix Retention Crisis (Immediate - 0-30 days)

**Goal: Reduce one-time purchase rate from 98% to 85% within 6 months**

1. **Post-Purchase Email Sequence**
   - Day 1: Thank you + product care tips
   - Day 7: Educational content about products
   - Day 21: "We miss you" + 10% discount
   - Day 34: Time to reorder reminder (aligns with 34-day purchase cycle)

2. **Implement Loyalty Program**
   - Points for purchases, reviews, referrals
   - Tiered benefits (Bronze/Silver/Gold)
   - Exclusive early access to new products

3. **Win-Back Campaign**
   - Target 31,105 one-time buyers
   - A/B test offers: discount vs. free shipping vs. product bundle
   - Personalized recommendations based on first purchase

4. **Customer Feedback Loop**
   - Survey one-time buyers: "Why didn't you come back?"
   - Exit surveys for cart abandonment
   - Product satisfaction follow-ups

### Priority 2: Traffic Recovery Plan (30-60 days)

**Goal: Recover 50% of lost traffic within 90 days**

1. **Marketing Audit**
   - Analyze 2015 marketing spend vs. 2014
   - Review Google Ads Quality Score trends
   - Check for algorithm penalties or ranking drops
   - Competitive analysis of paid search landscape

2. **Channel Optimization**
   - **Double down on nonbrand Google Ads** (proven 282K sessions)
   - Calculate ROAS per channel
   - Reallocate budget from underperforming channels
   - Test new ad copy focused on retention messaging

3. **SEO Investment**
   - Organic traffic shows potential (83K sessions)
   - Content marketing targeting product keywords
   - Technical SEO audit
   - Link building campaign

### Priority 3: Product Strategy (60-90 days)

**Goal: Reduce hero product dependency from 73% to 50%**

1. **Product Bundling**
   - Create gift sets combining products
   - "Complete Collection" bundles at discount
   - Increase AOV and cross-sell

2. **New Product Development**
   - Analyze what made Mr. Fuzzy successful
   - Develop complementary products
   - Test seasonal/limited editions

3. **Cross-Sell Optimization**
   - "Customers also bought" recommendations
   - Post-purchase upsell emails
   - Bundle discounts at checkout

### Priority 4: Conversion Optimization (Ongoing)

**Goal: Maintain 8%+ conversion rate while scaling traffic**

1. **A/B Testing Program**
   - Product page layouts
   - Checkout flow optimization
   - Trust signals and reviews
   - Mobile experience improvements

2. **Personalization Engine**
   - Dynamic product recommendations
   - Personalized email content
   - Retargeting based on browse behavior

---

## 📈 Positive Indicators to Build On

✅ **Strong Conversion Rate Improvement**: 4.14% → 8.44% shows funnel optimization expertise  
✅ **Consistent AOV Growth**: $50 → $63 demonstrates pricing power  
✅ **Traffic Generation Capabilities**: Proven ability to drive 233K+ sessions  
✅ **Clear Product-Market Fit**: Hero product extremely popular  
✅ **Improving Efficiency**: Better at converting traffic to sales  

---

## ⚠️ Risk Factors & Monitoring

| Risk | Likelihood | Impact | Mitigation |
|------|------------|--------|------------|
| Continued traffic decline | High | Critical | Aggressive marketing investment |
| Hero product saturation | Medium | High | Product diversification strategy |
| Unsustainable CAC | High | Critical | Retention program implementation |
| Competitive pressure | Medium | High | Brand building + differentiation |
| Seasonal dependency | Unknown | Medium | Analyze monthly patterns |

---

## 🎯 90-Day Action Plan Summary

### Month 1: Stop the Bleeding
- Launch retention email sequences
- Conduct customer exit surveys
- Audit marketing spend and traffic sources
- Implement basic loyalty points system

### Month 2: Stabilize & Test
- Roll out win-back campaigns to 31K one-time buyers
- A/B test discount vs. value-add retention offers
- Increase Google Ads spend on proven channels
- Develop product bundle strategy

### Month 3: Scale What Works
- Scale winning retention campaigns
- Launch new product cross-sell initiatives
- Implement personalization engine
- Establish monthly retention metrics dashboard

---

## 📊 Success Metrics to Track

| Metric | Current | 90-Day Target | 180-Day Target |
|--------|---------|---------------|----------------|
| Repeat purchase rate | 1.86% | 5% | 15% |
| Monthly active sessions | 21,400* | 50,000 | 80,000 |
| Conversion rate | 8.44% | 8%+ | 9%+ |
| Revenue/month | $113,459* | $175,000 | $250,000 |
| Product diversity (non-hero) | 27% | 35% | 50% |

*Based on 2015 averages

---

## Bottom Line

**You have a strong acquisition engine but a broken retention mechanism.**

The business is currently operating as a "leaky bucket" - successfully bringing in customers but failing to retain them. With a 98% one-time purchase rate, the economics of customer acquisition are unsustainable.

**The good news**: Your conversion rate optimization skills are proven (4% → 8%). Apply that same discipline to retention, and this business can transform from perpetual customer churn to sustainable growth.

**Priority action**: Fix retention first. A 5-10% repeat purchase rate would generate more revenue than most new acquisition efforts, at a fraction of the cost.

---

*Analysis Date: May 12, 2026*  
*Data Period: 2012-2015*  
*Total Customers Analyzed: 31,696*  
*Total Orders Analyzed: 32,313*

