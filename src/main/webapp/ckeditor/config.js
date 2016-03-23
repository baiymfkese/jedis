/**
 * @license Copyright (c) 2003-2015, CKSource - Frederico Knabben. All rights reserved.
 * For licensing, see LICENSE.md or http://ckeditor.com/license
 */

CKEDITOR.editorConfig = function( config ) {
	// Define changes to default configuration here. For example:
	config.language = 'zh-cn';
	config.extraPlugins="mathjax,oembed,uploadimage";
	config.mathJaxLib='http://cdn.mathjax.org/mathjax/2.2-latest/MathJax.js?config=TeX-AMS_HTML';
	config.filebrowserBrowseUrl = '../ckfinder_2_5_1/ckfinder.html';
	config.filebrowserImageBrowseUrl = '../ckfinder_2_5_1/ckfinder.html?type=Images';
	config.filebrowserFlashBrowseUrl = '../ckfinder_2_5_1/ckfinder.html?type=Flash';
	config.filebrowserUploadUrl='../ckfinder_2_5_1/core/connector/java/connector.java?command=QuickUpload&type=Files';
	config.filebrowserImageUploadUrl='../ckfinder_2_5_1/core/connector/java/connector.java?command=QuickUpload&type=Images';
	config.filebrowserFlashUploadUrl='../ckfinder_2_5_1/core/connector/java/connector.java?command=QuickUpload&type=Flash';
	config.image_previewText = ' ';// 去掉预览图片区域内容
};
