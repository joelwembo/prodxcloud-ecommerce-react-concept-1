import React, { Fragment } from "react";
import SEO from "../../components/seo";
import LayoutOne from "../../layouts/LayoutOne";
import HeroSliderTwentyFive from "../../wrappers/hero-slider/HeroSliderTwentyFive";
import BannerTwentyFive from "../../wrappers/banner/BannerTwentyFive";
import FeatureIconFive from "../../wrappers/feature-icon/FeatureIconFive";
import TabProductSixteen from "../../wrappers/product/TabProductSixteen";
import BlogFeaturedFour from "../../wrappers/blog-featured/BlogFeaturedFour";
import MedicalContact from "../../components/contact/MedicalContact";
import BannerTwentySix from "../../wrappers/banner/BannerTwentySix";
import ProductSlider from "../../wrappers/product/ProductSlider";

const HomeMedicalEquipment = () => {
  return (
    <Fragment>
      <SEO
        titleTemplate="Medical Equipment Home"
        description="Medical Equipment home of prodxcloud react minimalist eCommerce template."
      />
      <LayoutOne
        headerContainerClass="container-fluid"
        headerPaddingClass="header-padding-2"
        headerTop="visible"
      >
        {/* hero slider */}
        <HeroSliderTwentyFive />
        {/* banner */}
        <BannerTwentyFive spaceTopClass="pt-60" spaceBottomClass="pb-70" />
        {/* feature icon */}
        <FeatureIconFive spaceBottomClass="pb-100" />
        {/* tab product */}
        <TabProductSixteen spaceBottomClass="pb-70" category="medical" />
        {/* banner */}
        <BannerTwentySix spaceBottomClass="pb-70" />
        {/* product slider */}
        <ProductSlider category="medical" />
        {/* blog */}
        <BlogFeaturedFour spaceBottomClass="pb-55" spaceTopClass="pt-95" />
        {/* contact */}
        <MedicalContact />
      </LayoutOne>
    </Fragment>
  );
};

export default HomeMedicalEquipment;
