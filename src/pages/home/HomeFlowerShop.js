import React, { Fragment } from "react";
import SEO from "../../components/seo";
import LayoutTwo from "../../layouts/LayoutTwo";
import HeroSliderSix from "../../wrappers/hero-slider/HeroSliderSix";
import BannerSix from "../../wrappers/banner/BannerSix";
import TabProductFour from "../../wrappers/product/TabProductFour";
import TestimonialOne from "../../wrappers/testimonial/TestimonialOne";
import NewsletterTwo from "../../wrappers/newsletter/NewsletterTwo";
import BannerSeven from "../../wrappers/banner/BannerSeven";

const HomeFlowerShop = () => {
  return (
    <Fragment>
      <SEO
        titleTemplate="Flower Shop Home"
        description="Flower Shop home of prodxcloud react minimalist eCommerce template."
      />
      <LayoutTwo>
        {/* hero slider */}
        <HeroSliderSix />
        {/* banner */}
        <BannerSix spaceTopClass="pt-100" spaceBottomClass="pb-80" />
        {/* tab product */}
        <TabProductFour
          spaceBottomClass="pb-100"
          category="flower"
          productTabClass="product-tab-pink2"
        />
        {/* testimonial */}
        <TestimonialOne />
        {/* banner */}
        <BannerSeven spaceTopClass="pt-95" spaceBottomClass="pb-70" />
        {/* newsletter */}
        <NewsletterTwo
          spaceBottomClass="pb-100"
          subscribeBtnClass="pink-subscribe"
        />
      </LayoutTwo>
    </Fragment>
  );
};

export default HomeFlowerShop;
