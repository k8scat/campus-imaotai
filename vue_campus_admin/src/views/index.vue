<template>
  <div class="app-container home">
    <!-- <p>
      本项目中所有内容只供学习和研究使用，不得将本项目中任何内容用于违反国家/地区/组织等的法律法规或相关规定的其他用途。
    </p>
    <p>
      所有直接或间接使用本项目的个人和组织，应24小时内完成学习和研究，并及时删除本项目中的所有内容。如对本项目的功能有需求，应自行开发相关功能。
    </p>
    <p></p>
    <p>本项目免费，无任何盈利</p>
    <p>项目完全开源，更新地址：https://github.com/oddfar/campus-imaotai</p>

    <el-card class="box-card">
      <p>版本情况:</p>
      <p>campus-imaotai:{{ version }}</p>
      <p>campus框架:{{ frameworkVersion }}</p>
    </el-card>
  </div> -->
    <h3>西门i茅台自动申购平台功能介绍</h3>
    <p>1. 使用说明文档（飞书文档）</p>
    <a href="/">西门自动化申购i茅台网站</a>
    <p>2. 每天9点-9点50分之间随机时间点自动申购i茅台</p>
    <p>3. 每天11点-12点自动旅行、自动领取旅行小茅运奖励</p>
    <p>4. 每天19点自动获取中签结果，可在侧边栏 i茅台->日志 查看，中签了才会有日志，不中没有</p>
    <p>5. 执行结果会实时通知到你微信上（pushplus推送加公众号推送）</p>

    <br />
    <br />

    <p>首次注册的朋友，需添加西门小助手添加“i茅台”模块权限，加「西门茅台自动申购群」，找西门小助手！</p>
    <p>万1免5券商开户，找西门小助手！</p>

    <img :src="imgSimonWeixin" />

    <h3>关注西门</h3>
    <p>欢迎关注“西门吹雪实盘”公众号，百万实盘量化可转债、ETF网格，关注有万一优惠开户。</p>

    <img :src="imgSimonOA" />

    <br />
    <br />

    <p>欢迎关注“打新必读”公众号，每天新股、新债、配债分析和上市预测的低风险策略。</p>

    <img :src="imgSimonOA2" />

    <br />
    <br />

    <p>欢迎关注“西门爱搞钱”知识星球，免费发布券商保本羊毛、茅台、纪念币、信用卡优惠券等套利机会</p>

    <img :src="imgSimonZsxq1" />

    <br />
    <br />

    <p>欢迎关注“西门吹雪话投资”知识星球，一键跟投西门百万实盘的可转债轮动、网格ETF策略</p>

    <img :src="imgSimonZsxq2" />
  </div>
</template>

<script>
import { getVersion } from "@/api/system/index";
import imgSimonWeixin from "@/assets/images/simon-weixin.png";
import imgSimonOA from "@/assets/images/simon-oa.png";
import imgSimonOA2 from "@/assets/images/simon-oa2.png";
import imgSimonZsxq1 from "@/assets/images/simon-zsxq1.png";
import imgSimonZsxq2 from "@/assets/images/simon-zsxq2.png";

export default {
  name: "Index",
  data() {
    return {
      // 版本号
      version: "",
      frameworkVersion: "",
      imgSimonWeixin,
      imgSimonOA,
      imgSimonOA2,
      imgSimonZsxq1,
      imgSimonZsxq2,
    };
  },
  created() {
    this.getVersion();
  },
  methods: {
    getVersion() {
      getVersion().then((response) => {
          this.version = response.data.version;
          this.frameworkVersion = response.data.frameworkVersion;
        }
      );
    }
  },
};
</script>

<style scoped lang="scss">
.home {
  blockquote {
    padding: 10px 20px;
    margin: 0 0 20px;
    font-size: 17.5px;
    border-left: 5px solid #eee;
  }

  hr {
    margin-top: 20px;
    margin-bottom: 20px;
    border: 0;
    border-top: 1px solid #eee;
  }

  .col-item {
    margin-bottom: 20px;
  }

  ul {
    padding: 0;
    margin: 0;
  }

  font-family: "open sans", "Helvetica Neue", Helvetica, Arial, sans-serif;
  font-size: 13px;
  color: #676a6c;
  overflow-x: hidden;

  ul {
    list-style-type: none;
  }

  h4 {
    margin-top: 0px;
  }

  h2 {
    margin-top: 10px;
    font-size: 26px;
    font-weight: 100;
  }

  p {
    margin-top: 10px;

    b {
      font-weight: 700;
    }
  }

  .update-log {
    ol {
      display: block;
      list-style-type: decimal;
      margin-block-start: 1em;
      margin-block-end: 1em;
      margin-inline-start: 0;
      margin-inline-end: 0;
      padding-inline-start: 40px;
    }
  }
}
</style>

