import React, { Fragment } from "react";
import SEO from "../../components/seo";
import LayoutTwo from "../../layouts/LayoutTwo";
import HeroSliderFour from "../../wrappers/hero-slider/HeroSliderFour";
import BannerFour from "../../wrappers/banner/BannerFour";
import TabProduct from "../../wrappers/product/TabProduct";
import FeatureIconThree from "../../wrappers/feature-icon/FeatureIconThree";
import Newsletter from "../../wrappers/newsletter/Newsletter";

const HomePlants = () => {
  return (
    <Fragment>
      <SEO
        titleTemplate="Plants Home"
        description="Plants home of prodxcloud react minimalist eCommerce template."
      />
      <LayoutTwo footerBgClass="bg-gray-4">
        {/* hero slider */}
        <HeroSliderFour />
        {/* banner */}
        <BannerFour />
        {/* tab product */}
        <TabProduct
          spaceTopClass="pt-60"
          spaceBottomClass="pb-70"
          bgColorClass="bg-gray-2"
          category="plant"
        />
        {/* feature icon */}
        <FeatureIconThree
          bgColorClass="bg-gray-2"
          spaceBottomClass="pb-70"
          featureShapeClass="support-shape-2"
        />
        {/* newsletter */}
        <Newsletter
          bgColorClass="bg-gray-2"
          spaceBottomClass="pb-100"
          spaceLeftClass="pl-30"
          spaceRightClass="pr-30"
        />
      </LayoutTwo>
    </Fragment>
  );
};

export default HomePlants;
