using System;
using System.Collections.Generic;
using System.Text;
using Newtonsoft.Json;

namespace APIVerve.API.CodeDetector
{
    /// <summary>
    /// Query options for the Code Detector API
    /// </summary>
    public class CodeDetectorQueryOptions
    {
        /// <summary>
        /// The code snippet you want to detect the programming language of
        /// </summary>
        [JsonProperty("code")]
        public string Code { get; set; }
    }
}
