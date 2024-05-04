import React, { Fragment } from "react";
import SEO from "../../components/seo";
import LayoutOne from "../../layouts/LayoutOne";
import HeroSliderTwentySeven from "../../wrappers/hero-slider/HeroSliderTwentySeven";
import BannerTwentyEight from "../../wrappers/banner/BannerTwentyEight";
import BannerTwentyNine from "../../wrappers/banner/BannerTwentyNine";
import TestimonialTwo from "../../wrappers/testimonial/TestimonialTwo";
import BrandLogoSliderOne from "../../wrappers/brand-logo/BrandLogoSliderOne";
import ProductGridSixContainer from "../../wrappers/product/ProductGridSixContainer";
import TabProductEighteen from "../../wrappers/product/TabProductEighteen";

const HomeElectronicsThree = () => {
  return (
    <Fragment>
      <SEO
        titleTemplate="Electronics Home"
        description="Electronics home of prodxcloud react minimalist eCommerce template."
      />
      <LayoutOne headerTop="visible">
        {/* hero slider */}
        <HeroSliderTwentySeven />
        {/* banner */}
        <BannerTwentyEight spaceTopClass="pt-100" spaceBottomClass="pb-70" />
        {/* product tab */}
        <TabProductEighteen category="electronics" spaceBottomClass="pb-70" />
        {/* banner */}
        <BannerTwentyNine spaceBottomClass="pb-70" />
        {/* product grid */}
        <ProductGridSixContainer spaceBottomClass="pb-70" />
        {/* testimonial */}
        <TestimonialTwo
          spaceTopClass="pt-100"
          spaceBottomClass="pb-95"
          bgColorClass="bg-gray-3"
          backgroundImage="/assets/img/bg/testimonial-bg.jpg"
        />
        {/* brand logo slider */}
        <BrandLogoSliderOne spaceBottomClass="pb-95" spaceTopClass="pt-100" />
      </LayoutOne>
    </Fragment>
  );
};

export default HomeElectronicsThree;
