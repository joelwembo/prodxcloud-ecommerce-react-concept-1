
import SEO from "../../components/seo";
import LayoutFour from "../../layouts/LayoutFour";
import NewsletterTwo from "../../wrappers/newsletter/NewsletterTwo";
import HeroSliderEleven from "../../wrappers/hero-slider/HeroSliderEleven";
import CategoryTwoSlider from "../../wrappers/category/CategoryTwoSlider";
import TabProductSix from "../../wrappers/product/TabProductSix";

const HomeFurnitureTwo = () => {
  return (
    <LayoutFour>
      <SEO
        titleTemplate="Furniture Home"
        description="Furniture home of prodxcloud react minimalist eCommerce template."
      />
      {/* hero slider */}
      <HeroSliderEleven />
      {/* category */}
      <CategoryTwoSlider spaceTopClass="pt-100" spaceBottomClass="pb-95" />
      {/* tab product */}
      <TabProductSix spaceBottomClass="pb-70" category="furniture" />
      {/* newsletter */}
      <NewsletterTwo spaceBottomClass="pb-100" />
    </LayoutFour>
  );
};

export default HomeFurnitureTwo;
