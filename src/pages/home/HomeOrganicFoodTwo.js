import { Fragment } from "react";
import SEO from "../../components/seo";
import LayoutOne from "../../layouts/LayoutOne";
import HeroSliderTwenty from "../../wrappers/hero-slider/HeroSliderTwenty";
import FeatureIconFour from "../../wrappers/feature-icon/FeatureIconFour";
import TestimonialOne from "../../wrappers/testimonial/TestimonialOne";
import BlogFeaturedThree from "../../wrappers/blog-featured/BlogFeaturedThree";
import CountDownFour from "../../wrappers/countdown/CountDownFour";
import BannerSeventeen from "../../wrappers/banner/BannerSeventeen";
import TabProductFive from "../../wrappers/product/TabProductFive";

const HomeOrganicFoodTwo = () => {
  return (
    <Fragment>
      <SEO
        titleTemplate="Organic Food Home"
        description="Organic food home of prodxcloud react minimalist eCommerce template."
      />
      <LayoutOne headerTop="visible">
        {/* hero slider */}
        <HeroSliderTwenty spaceLeftClass="ml-70" spaceRightClass="mr-70" />
        {/* feature icon */}
        <FeatureIconFour
          spaceTopClass="pt-10"
          containerClass="container-fluid"
          gutterClass="padding-10-row-col"
        />
        {/* tab product */}
        <TabProductFive
          spaceTopClass="pt-95"
          spaceBottomClass="pb-70"
          category="organic food"
        />
        {/* banner */}
        <BannerSeventeen spaceTopClass="pt-95" />
        {/* countdown */}
        <CountDownFour
          spaceTopClass="pt-100"
          spaceBottomClass="pb-100"
          dateTime="November 13, 2023 12:12:00"
          countDownImage="/assets/img/banner/deal-6.png"
        />
        {/* testimonial */}
        <TestimonialOne
          spaceTopClass="pt-100"
          spaceBottomClass="pb-95"
          bgColorClass="bg-gray-3"
        />
        {/* blog featured */}
        <BlogFeaturedThree spaceTopClass="pt-70" spaceBottomClass="pb-70" />
      </LayoutOne>
    </Fragment>
  );
};

export default HomeOrganicFoodTwo;
